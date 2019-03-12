cask 'sciebo' do
  version '2.5.1.2378'
  sha256 '38b67469fa672e9a0e1be9b91aa35ad9aafffdf2acff1399582b8c080a2a03da'

  url "https://www.sciebo.de/install/sciebo-#{version}.pkg"
  appcast 'https://www.sciebo.de/updateserver/?version=2.3.3.1812&platform=macos&oem=sciebo&sparkle=true'
  name 'sciebo'
  homepage 'https://sciebo.de/'

  pkg "sciebo-#{version}.pkg"

  uninstall pkgutil: 'de.sciebo.sciebo'
end
