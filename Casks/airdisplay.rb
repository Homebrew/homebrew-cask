cask 'airdisplay' do
  version '3.1'
  sha256 '8e5743026352c982ecdd948b203026579b0d7f96442b203827372f1a8c3b2206'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.no_dots}.zip"
  appcast 'https://avatron.com/air-display-hosts/'
  name 'Air Display'
  homepage 'https://avatron.com/applications/air-display/'

  pkg 'Air Display Installer Signed.pkg'

  uninstall pkgutil: [
                       'com.avatron.pkg.AirDisplay',
                       'com.avatron.pkg.AirDisplayHost2',
                     ]
end
