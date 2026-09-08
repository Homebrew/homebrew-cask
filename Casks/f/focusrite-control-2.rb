cask "focusrite-control-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.1108.0.0"
  sha256 "04cae940004cf5626d984d84084aca193005044714459b739bf7349e1d0e5678"

  url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/Focusrite-Control-2-#{version}.dmg"
  name "Focusrite Control 2"
  desc "Focusrite interface controller for devices of the 4th generation and newer"
  homepage "https://focusrite.com/software/focusrite-control-2"

  livecheck do
    url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/focusrite-control.release.mac.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :big_sur

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
