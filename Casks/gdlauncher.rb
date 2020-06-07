cask 'gdlauncher' do
  version '1.0.6'
  sha256 '1163ce4f4db5d08a8cc59a48fe1e5a2ac93a97d26d4e7b42a749ad6f46e87f99'

  # github.com/gorilla-devs/GDLauncher/ was verified as official when first introduced to the cask
  url "https://github.com/gorilla-devs/GDLauncher/releases/download/v#{version}/GDLauncher-mac-setup.dmg"
  appcast 'https://github.com/gorilla-devs/GDLauncher/releases.atom'
  name 'GDLauncher'
  homepage 'https://gdevs.io/'

  app 'GDLauncher.app'
end
