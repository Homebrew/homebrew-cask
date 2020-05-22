cask 'gdlauncher' do
  version '1.0.4'
  sha256 '9b72e85aee15c00746f18959702e549ec8cedc32bf5a2ae98145015809ad642e'

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg"
  appcast 'https://github.com/gorilla-devs/GDLauncher/releases.atom'
  name 'GDLauncher'
  homepage 'https://gdevs.io/'

  app 'GDLauncher.app'
end
