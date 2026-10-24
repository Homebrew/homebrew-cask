cask "crosspaste" do
  arch arm: "aarch64", intel: "amd64"
  url_end = on_system_conditional macos: "mac-#{arch}.zip", linux: "#{arch}.AppImage"

  version "2.3.0.2767"
  sha256 arm:          "2d3846f63c492acc47e0d43a0541fc1057e7841e4657e74dbc48e5bfe8230dfe",
         intel:        "59e9399a41439833aea01947a17ed4397e616daa7f3f8db31260205848915724",
         arm64_linux:  "956c3c770a13735f7caaddb2d52a9af9bdf6ec1345861147c34693e2b9c88dd2",
         x86_64_linux: "7e78627a649fde795fa27d8c8bf1fa713fe69aa11b144b53dd21aa5f1730043d"

  on_macos do
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
