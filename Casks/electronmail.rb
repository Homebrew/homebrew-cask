cask 'electronmail' do
  version '4.4.0'
  sha256 'b700078c86f8d57cdd15d09edf5dd1ac55e7eeea7ff43d45d990dfdb903da04d'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
