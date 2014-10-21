class Bowery < Cask
  version '3.2.7'
  sha256 'e473b9d3b056a23b79c5174e979f345ef1cb873bcadfd02360a46f7b015a394f'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  homepage 'http://bowery.io/'
  license :unknown

  pkg 'bowery.pkg'
  uninstall :pkgutil => 'com.bowery.desktop'
end
