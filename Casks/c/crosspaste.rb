cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"
  url_end = on_system_conditional macos: "mac-#{arch}.zip", linux: "#{arch}.AppImage"

  version "2.1.6.2390"

  on_macos do
    sha256 arm:   "a5a31634e54b9e009c86ce3a2bcd5da3a2c36b8ec6b04ea4b0229115bc1f30e8",
           intel: "d7115466493bdd6dfebc37624676e93279941a42f9635737ce6cff5f2625efa4"

    depends_on macos: :sonoma

    app "CrossPaste.app"

    uninstall launchctl: "com.crosspaste.mac"

    zap trash: [
      "~/Library/Application Support/CrossPaste",
      "~/Library/HTTPStorages/com.crosspaste.mac",
      "~/Library/HTTPStorages/com.crosspaste.mac.binarycookies",
      "~/Library/LaunchAgents/com.crosspaste.mac.plist",
      "~/Library/Preferences/com.crosspaste.mac.plist",
    ]
  end
  on_linux do
    sha256 arm64_linux:  "ed145ce88c924181f9a5818d2785703a56edbbf90700dc884846defcb346123f",
           x86_64_linux: "c651c4f313ae8a321f4265e160f95b21f5ba985a0d651f65fe8cfed4b0708234"

    app_image "crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-#{arch}.AppImage",
              target: "CrossPaste.AppImage"
  end

  url "https://github.com/CrossPaste/crosspaste-desktop/releases/download/#{version}/crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-#{url_end}",
      verified: "github.com/CrossPaste/crosspaste-desktop/"
  name "CrossPaste"
  desc "Universal Pasteboard Across Devices"
  homepage "https://crosspaste.com/en/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
