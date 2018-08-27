cask 'angular-console' do
  version '6.0.0-beta.1'
  sha256 '37954859f2488560dd1b723534e798c423f178506bf8c68ccf23b3a5d73748a3'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
