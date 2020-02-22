cask 'electronmail' do
  version '4.3.0'
  sha256 '93ae03db3a4bee735e9247e1dbe77cbc197e0e51d26c6f66a92507ad33b77f0d'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
