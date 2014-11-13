cask :v1 => 'bowery' do
  version '3.3.0'
  sha256 'b10ed33caaab237f8ba847325ed0b2f82ef6eaac856b32d018bf4d03add20bb0'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  homepage 'http://bowery.io/'
  license :unknown

  pkg 'bowery.pkg'
  uninstall :pkgutil => 'com.bowery.desktop'
end
