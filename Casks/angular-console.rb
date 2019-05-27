cask 'angular-console' do
  version '7.4.24'
  sha256 'ae2fc4f2ab1c8f473064d7c8648c343d6ca7ed037983f12e617d679ad608c640'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
