cask 'angular-console' do
  version '6.0.0'
  sha256 'b896d8a0c7d38ccd7aaf1b1329f3cc7c83e9916eaa0ef01ddb3c67b41b48d39e'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
