cask "keypad-layout" do
  version "1.7"
  sha256 "8872f76cc433f0d57e73a5181a7d0f4821aaca9673271bda6e6dbced0b4dc3cc"

  url "https://github.com/janten/keypad-layout/releases/download/#{version}/Keypad-Layout.zip"
  appcast "https://github.com/janten/keypad-layout/releases.atom"
  name "Keypad Layout"
  desc "Utility to control window layout using the Ctrl key and the numeric keypad"
  homepage "https://github.com/janten/keypad-layout"

  app "Keypad Layout.app"
end
