cask 'eagle' do
  version '9.4.0'
  sha256 '10f3d0bb216ec6e8df447483f6f47b55aef4709719034b7d23ed6e74d551a301'

  url "https://eagle-updates.circuits.io/downloads/#{version.dots_to_underscores}/Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"
  appcast 'http://eagle.autodesk.com/eagle/release-notes'
  name 'Autodesk EAGLE'
  homepage 'https://circuits.io/'

  pkg "Autodesk_EAGLE_#{version}_English_Mac_64bit.pkg"

  uninstall pkgutil: 'com.Autodesk.eagle'
end
