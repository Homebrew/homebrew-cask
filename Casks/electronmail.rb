cask 'electronmail' do
  version '4.4.1'
  sha256 '902ac93ea0f61b3c6a83dd86982855207a69350f4897f0ee55296abd1e579cc6'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
