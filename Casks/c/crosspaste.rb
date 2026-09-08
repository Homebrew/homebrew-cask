cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"
  url_end = on_system_conditional macos: "mac-#{arch}.zip", linux: "#{arch}.AppImage"

  version "2.2.0.2544"

  on_macos do
    sha256 arm:   "c4a6e3b4fae2b91ffa06e9d1f8b113e5240fe1b8b2e1f2e1a545e1c2155526a5",
           intel: "e873143494b6f1796f8953c82491fad8cd132eca4e934b5f82a80cdf2865004f"

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
    sha256 arm64_linux:  "66c8317432a3bf1ccc444d915ca2cee9eba7bcc6f83fd70fb2c136423aa81a35",
           x86_64_linux: "2adb16b74dacffc8aa84d74f2d2d8ba35720f884463f1bcaf094104f16402b24"

    app_image "crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-#{arch}.AppImage",
              target: "CrossPaste.AppImage"
  end

  url "https://github.com/CrossPaste/crosspaste-desktop/releases/download/#{version}/crosspaste-#{version.major_minor_patch}-#{version.split(".").last}-#{url_end}"
  name "CrossPaste"
  desc "Universal Pasteboard Across Devices"
  homepage "https://crosspaste.com/en/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
