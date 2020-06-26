cask 'airdisplay' do
  version '3.4.1'
  sha256 '71468b687c6a0a9e715a94e9afd15b69dae44098ebdfcf2a0071eb5d9d3636ce'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.no_dots}.zip"
  appcast 'https://www.avatron.com/updates/software/airdisplay/appcast.xml'
  name 'Air Display'
  homepage 'https://avatron.com/applications/air-display/'

  pkg "ad#{version.no_dots}.pkg"

  uninstall pkgutil: [
                       'com.avatron.pkg.AirDisplay',
                       'com.avatron.pkg.AirDisplayHost2',
                     ]
end
