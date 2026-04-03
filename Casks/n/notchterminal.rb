cask "notchterminal" do
  version "1.2.1"
  sha256 "b01bba234abb98dffbe18fa305363c04b7f7ff2a849d36732df9507a85f096be"

  url "https://github.com/iDams/NotchTerminal/releases/download/v#{version}/NotchTerminal-#{version}.zip"
  name "NotchTerminal"
  desc "Drop-down terminal for macOS that lives in your notch"
  homepage "https://github.com/iDams/NotchTerminal"

  app "NotchTerminal.app"
end
