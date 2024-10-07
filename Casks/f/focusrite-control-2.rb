cask "focusrite-control-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.402.0.24428"
  sha256 "d93ea084a0dcc0e9e1a2d041679e8bd316f4b3fff675977c6b9468b89095ac8e"

  url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/Focusrite-Control-2-#{version}.dmg"
  name "Focusrite Control 2"
  desc "Focusrite interface controller for devices of the 4th generation and newer"
  homepage "https://focusrite.com/software/focusrite-control-2"

  livecheck do
    url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/focusrite-control.release.mac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Focusrite Control 2.app"

  uninstall launchctl: "com.focusrite.ControlServer",
            quit:      "com.focusrite.control"

  zap trash: [
    "~/Library/Application Support/Focusrite",
    "~/Library/Caches/com.juce.locks",
    "~/Library/HTTPStorages/com.focusrite.control",
    "~/Library/Logs/Focusrite Control 2",
    "~/Library/Preferences/com.focusrite.control.plist",
    "~/Library/Saved Application State/com.focusrite.control.savedState",
  ]
end
