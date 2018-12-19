cask 'angular-console' do
  version '7.0.0'
  sha256 '7a3d35016e70e9ea6f820d4f0fc07f20a16af00ce08a127b45ce0294fedb9de2'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
