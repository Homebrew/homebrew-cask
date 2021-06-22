cask "electronmail" do
  version "4.12.3"
  sha256 "aa13a30c5ad34dbcc423d10cf36ecdebfaf8688d9de760fb6a8f2bdc026c1d33"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-x64.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
