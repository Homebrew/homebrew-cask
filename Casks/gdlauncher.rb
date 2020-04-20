cask 'gdlauncher' do
  version '0.12.4'
  sha256 'd73f751659443117b0bf8948e3e74494f96a1c2060cdb1dcaa21854d270209f3'

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.zip"
  appcast 'https://github.com/gorilla-devs/GDLauncher/releases.atom'
  name 'GDLauncher'
  homepage 'https://gdevs.io/'

  app 'GDLauncher.app'
end
