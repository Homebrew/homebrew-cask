class Bowery < Cask
  version '3.2.9'
  sha256 'fbcc62c54f24b75ade5b43037fea20d388c3a61aaf458d3295fc51975eb27c16'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  homepage 'http://bowery.io/'
  license :unknown

  pkg 'bowery.pkg'
  uninstall :pkgutil => 'com.bowery.desktop'
end
