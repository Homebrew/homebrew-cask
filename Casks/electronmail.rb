cask 'electronmail' do
  version '4.2.2'
  sha256 '5f3d9d3deb327c8812e0283ba5489e24b1e4ce9c6a1c10a94aee111c0c5cfe04'

  url "https://github.com/vladimiry/ElectronMail/releases/download/v#{version}/electron-mail-#{version}-mac-mojave.dmg"
  appcast 'https://github.com/vladimiry/ElectronMail/releases.atom'
  name 'ElectronMail'
  homepage 'https://github.com/vladimiry/ElectronMail'

  app 'ElectronMail.app'
end
