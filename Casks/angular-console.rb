cask 'angular-console' do
  version '7.1.1'
  sha256 '04e8cf5e5f2357fd534499c7d8b0c47e9042253439ef2fe3610a4bf0d2832d16'

  # github.com/nrwl/angular-console was verified as official when first introduced to the cask
  url "https://github.com/nrwl/angular-console/releases/download/v#{version}/AngularConsole-#{version}.dmg"
  appcast 'https://github.com/nrwl/angular-console/releases.atom'
  name 'Angular Console'
  homepage 'https://angularconsole.com/'

  app 'Angular Console.app'
end
