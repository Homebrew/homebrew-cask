cask "keypad-layout" do
  version "1.9"
  sha256 "ac679871c8520830558977dd0f046fddbb2c7fc9954f6383b8fd1c5bccd503b7"

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  name "Keypad Layout"
  desc "Utility to control window layout using the Ctrl key and the numeric keypad"
  homepage "https://github.com/janten/keypad-layout"

  app "Keypad Layout.app"
end
