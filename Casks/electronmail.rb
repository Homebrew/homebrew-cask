cask "electronmail" do
  version "4.12.2"
  sha256 "b44ec31601f5fd1a60bcf072535f9569253c143bfe3a9079a9f5eba0ae1d2411"

  url "https://github.com/vladimiry/ElectronMail/releases/download/v4.12.2/electron-mail-4.12.2-mac-x64.dmg"
  name "ElectronMail"
  desc "Unofficial ProtonMail Desktop App"
  homepage "https://github.com/vladimiry/ElectronMail"

  app "ElectronMail.app"
end
