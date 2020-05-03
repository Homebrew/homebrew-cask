cask 'airdisplay' do
  version '3.3.3'
  sha256 '773b71d4a572d7af79dc9812f77f2299c73ba5045a0d29cbdf5943d2505a4025'

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
