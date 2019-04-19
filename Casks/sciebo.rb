cask 'sciebo' do
  version '2.5.4.2540'
  sha256 '8c37cee3b4318bc892525e9bc4e73d2ec767627552b29b13b358007c440c287b'

  url "https://www.sciebo.de/install/sciebo-#{version}.pkg"
  appcast 'https://www.sciebo.de/updateserver/?version=2.3.3.1812&platform=macos&oem=sciebo&sparkle=true'
  name 'sciebo'
  homepage 'https://sciebo.de/'

  pkg "sciebo-#{version}.pkg"

  uninstall pkgutil: 'de.sciebo.sciebo'
end
