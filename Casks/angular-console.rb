cask 'angular-console' do
  version '7.4.3'
  sha256 '4aab003bf60e043fc4b81e32d1cef84635d9852fa7eee5397818296d27677b36'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
