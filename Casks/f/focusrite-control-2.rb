cask "focusrite-control-2" do
  version "1.111.0.15742"
  sha256 "1234"

  url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/Focusrite-Control-2-#{version}.dmg"
  name "Focusrite Control 2"
  desc "Focusrite interface controller for devices of the 4th generation and newer"
  homepage "https://focusrite.com/en"

  livecheck do
    url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/focusrite-control.release.mac.xml"
    strategy :sparkle, &:version
  end

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
