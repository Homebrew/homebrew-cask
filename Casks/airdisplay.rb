cask 'airdisplay' do
  version '3.0.3'
  sha256 'db84a66fe3522929a0afa58a4fe0189977baded89df0035ead1ccd334f7b8126'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.no_dots}.zip"
  appcast 'https://avatron.com/updates/software/airdisplay/appcast.xml',
          checkpoint: '53595c733dda80a38d6eff64e52efb3a8b763e7824eb3185df5d0a6958fa44f4'
  name 'Air Display'
  homepage 'https://avatron.com/applications/air-display/'

  pkg 'Air Display Installer.pkg'

  uninstall pkgutil: [
                       'com.avatron.pkg.AirDisplay',
                       'com.avatron.pkg.AirDisplayHost2',
                     ]
end
