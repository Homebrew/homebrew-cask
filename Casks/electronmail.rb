cask 'electronmail' do
  version '4.5.1'
  sha256 '09ce89205d2e90a641bb523b23441e7a88886740eb130e01481704c14fd35da6'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
