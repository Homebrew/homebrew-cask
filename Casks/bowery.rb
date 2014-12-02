cask :v1 => 'bowery' do
  version '3.3.1'
  sha256 '7ebe18bd25df7156027e5be857528a20c86ca8251a94d437086c77c6fb8b1f73'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  homepage 'http://bowery.io/'
  license :unknown

  pkg 'bowery.pkg'

  uninstall :pkgutil => 'com.bowery.desktop'
end
