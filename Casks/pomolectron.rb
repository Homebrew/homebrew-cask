cask "pomolectron" do
  version "1.1.0"
  sha256 "3c6f756985a06938f33bfe11c638fc227847075d203ab098a643a0ad26d59055"

  url "https://github.com/amitmerchant1990/pomolectron/releases/download/v#{version}/Pomolectron-darwin-x64.zip"
  appcast "https://github.com/amitmerchant1990/pomolectron/releases.atom"
  name "Pomolectron"
  desc "Pomodoro app for the menu bar/tray"
  homepage "https://github.com/amitmerchant1990/pomolectron"

  app "Pomolectron-darwin-x64/Pomolectron.app"
end
