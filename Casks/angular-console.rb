cask 'angular-console' do
  version '7.4.30'
  sha256 'd1ea8f66b6d5bb4b092b4342a508fba3deda45c6ca0444f48e008990969aefdf'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
