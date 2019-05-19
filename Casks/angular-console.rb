cask 'angular-console' do
  version '7.4.24'
  sha256 '787ead1cf41ddf46813716e81e39b181378fa3b07bf21f1ebc488d17d0ee2dbc'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
