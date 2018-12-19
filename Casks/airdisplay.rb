cask 'airdisplay' do
  version '3.2'
  sha256 '8e03a4728114114dde6c580003aea0fb6be94154c193c92f86c2da4415519b92'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.no_dots}.zip"
  appcast 'https://avatron.com/air-display-hosts/'
  name 'Air Display'
  homepage 'https://avatron.com/applications/air-display/'

  pkg 'Air Display Installer.pkg'

  uninstall pkgutil: [
                       'com.avatron.pkg.AirDisplay',
                       'com.avatron.pkg.AirDisplayHost2',
                     ]
end
