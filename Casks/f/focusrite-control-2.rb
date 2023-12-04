cask "focusrite-control-2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.111.0.15742"
  sha256 "0b9ffb23ac6c437ab61c5f6bc4b2f2d7061eb8004d6c2113709a5eb9532d4f41"

  url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/Focusrite-Control-2-#{version}.dmg"
  name "Focusrite Control 2"
  desc "Focusrite interface controller for devices of the 4th generation and newer"
  homepage "https://focusrite.com/en"

  livecheck do
    url "https://releases.focusrite.com/com.focusrite.focusrite-control/release/focusrite-control.release.mac.xml"
    strategy :sparkle, &:version
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Focusrite Control 2.app"

  uninstall quit:      "com.focusrite.control",
            launchctl: "com.focusrite.ControlServer"

  zap trash: [
    "~/Library/Application Support/Focusrite",
    "~/Library/Caches/com.juce.locks",
    "~/Library/Logs/Focusrite Control 2",
    "~/Library/Saved Application State/com.focusrite.control.savedState",
    "~/Library/HTTPStorages/com.focusrite.control",
    "~/Library/Preferences/com.focusrite.control.plist",
  ]
end
