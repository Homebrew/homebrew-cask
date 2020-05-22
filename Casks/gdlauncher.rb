cask 'gdlauncher' do
  version '1.0.5'
  sha256 '93bb5cdf7808be4582b4bf05eec59a0e20225a3fcb9ff7a385dc92fb8174d171'

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg"
  appcast 'https://github.com/gorilla-devs/GDLauncher/releases.atom'
  name 'GDLauncher'
  homepage 'https://gdevs.io/'

  app 'GDLauncher.app'
end
