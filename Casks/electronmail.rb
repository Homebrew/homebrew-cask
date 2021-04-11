cask "electronmail" do
  version "4.12.0"
  sha256 "2d3bd22ecf07683a87d6e86e2f46b313cfa20a5c6817db04674f0374c90a27a9"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
