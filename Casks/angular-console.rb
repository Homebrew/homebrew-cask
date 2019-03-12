cask 'angular-console' do
  version '7.3.0'
  sha256 'f701fe40b82cd368d595b11ef4505560331d254b7633d386dbd0c6001c5bdb93'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
