class Bowery < Cask
  version '3.2.11'
  sha256 'dbdbad37b8d17e72c227858037b67aa531e3c8b8031c314166a275121fd73468'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  homepage 'http://bowery.io/'
  license :unknown

  pkg 'bowery.pkg'
  uninstall :pkgutil => 'com.bowery.desktop'
end
