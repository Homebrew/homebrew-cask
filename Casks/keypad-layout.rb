cask "keypad-layout" do
  version "1.8"
  sha256 "0cac66808d7334e815caa83851839c6b52c418842b4f3ea0d9ffa7f4f1737324"

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast "https://github.com/janten/keypad-layout/releases.atom"
  name "Keypad Layout"
  desc "Utility to control window layout using the Ctrl key and the numeric keypad"
  homepage "https://github.com/janten/keypad-layout"

  app "Keypad Layout.app"
end
