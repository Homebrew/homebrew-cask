cask 'sciebo' do
  version '2.5.4.2575'
  sha256 '47df66856eb4a269154c322a0ae7d488a70c2943c76cdccedf724a01fc88589e'

  url "https://www.sciebo.de/install/sciebo-#{version}.pkg"
  appcast 'https://www.sciebo.de/updateserver/?version=2.3.3.1812&platform=macos&oem=sciebo&sparkle=true'
  name 'sciebo'
  homepage 'https://sciebo.de/'

  pkg "sciebo-#{version}.pkg"

  uninstall pkgutil: 'de.sciebo.sciebo'
end
