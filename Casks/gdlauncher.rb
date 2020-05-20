cask 'gdlauncher' do
  version '1.0.3'
  sha256 'ccf9cd4d7ffb03a0717c344e64c95db71f687becf27e15770c57a43552881b15'

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg"
  appcast 'https://github.com/gorilla-devs/GDLauncher/releases.atom'
  name 'GDLauncher'
  homepage 'https://gdevs.io/'

  app 'GDLauncher.app'
end
