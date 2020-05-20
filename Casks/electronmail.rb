cask 'electronmail' do
  version '4.5.0'
  sha256 'ebd7c8af320c48ca287bed5e6c76b1bd38d2dfa9245f4fdbe94d177a8b7681ce'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
