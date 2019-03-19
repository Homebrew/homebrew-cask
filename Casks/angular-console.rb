cask 'angular-console' do
  version '7.4.0'
  sha256 '3b69210db89e1457c437d733ee7d7c003084fe829f68f54d4f7d05ea5d5b1ac8'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
