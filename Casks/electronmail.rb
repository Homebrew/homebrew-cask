cask 'electronmail' do
  version '4.6.0'
  sha256 '4f5e11ad6e11f78cb7b419c7e5391a00e2433aa1832a592af3663252a430acf2'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
