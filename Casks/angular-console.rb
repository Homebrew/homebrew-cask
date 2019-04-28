cask 'angular-console' do
  version '7.4.7'
  sha256 '75399276440bb221e1eb9b04a45ed3ffa9130f1b9f15805fc68d4a42dd253273'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
