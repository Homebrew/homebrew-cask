cask 'angular-console' do
  version '7.1.0'
  sha256 '6512df0ca387546ce3c2b30451849a00caf7a7231406ab0bd3917fe88adaeffe'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
