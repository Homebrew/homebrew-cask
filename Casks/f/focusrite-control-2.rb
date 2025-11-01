cask "focusrite-control-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.703.0.0"
  sha256 "6249aeb5f966a36882ae3163071c58a92dd5957b4f087f803af8c77f2b57db17"

  url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/Focusrite-Control-2-#{version}.dmg"
  name "Focusrite Control 2"
  desc "Focusrite interface controller for devices of the 4th generation and newer"
  homepage "https://focusrite.com/software/focusrite-control-2"

  livecheck do
    url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/focusrite-control.release.mac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

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
