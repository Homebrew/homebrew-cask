cask 'brew-services-menubar' do
  version '2.1.0'
  sha256 '59cc2a2cdb2dc3762071e2b67d8aa787af52f500141f3af4f481403c02999ddb'

  url "https://github.com/andrewn/brew-services-menubar/releases/download/v#{version}/BrewServicesMenubar.zip"
  appcast 'https://github.com/andrewn/brew-services-menubar/releases.atom',
          checkpoint: 'bb694b2453628becf0888b949205e020db1ad9381e5412904d0ad85383f5917c'
  name 'Brew Services Menubar'
  homepage 'https://github.com/andrewn/brew-services-menubar'

  app 'BrewServicesMenubar.app'
end
