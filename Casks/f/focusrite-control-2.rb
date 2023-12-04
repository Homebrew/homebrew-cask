cask "focusrite-control-2" do
  version :latest
  sha256 :no_check

  url "https://releases.focusrite.com/com.focusrite.focusrite-control/latest/Focusrite-Control-2.dmg"
  name "Focusrite Control 2"
  desc "Focusrite interface controller for devices of the 4th generation and newer"
  homepage "https://focusrite.com/en"

  depends_on macos: ">= :mojave"

  app "Focusrite Control 2.app"

  uninstall quit:      "com.focusrite.control",
            launchctl: "com.focusrite.ControlServer",
            delete:    [
              "~/Applications/Focusrite Control 2.app",
              "/Library/LaunchDaemons/com.focusrite.ControlServer.plist",
            ]

  zap trash: [
    "~/Library/Application Support/Focusrite",
    "~/Library/Caches/com.juce.locks",
    "~/Library/Logs/Focusrite Control 2",
    "~/Library/Saved Application State/com.focusrite.control.savedState",
    "~/Library/HTTPStorages/com.focusrite.control",
    "~/Library/Preferences/com.focusrite.control.plist",
  ]
end
