cask 'airdisplay' do
  version '3.2.1'
  sha256 'ddb653f912b5f437ed269d84ca01f7b9e9ac09b9b26cb66608dac48716c52ed2'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.no_dots}.zip"
  appcast 'https://www.avatron.com/updates/software/airdisplay/appcast.xml'
  name 'Air Display'
  homepage 'https://avatron.com/applications/air-display/'

  pkg 'Air Display Installer.pkg'

  uninstall pkgutil: [
                       'com.avatron.pkg.AirDisplay',
                       'com.avatron.pkg.AirDisplayHost2',
                     ]
end
