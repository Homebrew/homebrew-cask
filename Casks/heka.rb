cask :v1 => 'heka' do
  version '0.9.2'
  sha256 '5fef4af06b97bf926fbec7ecb5c7983eed80601d56b2bedac02dad6b8677a094'

  url "https://github.com/mozilla-services/heka/releases/download/v#{version}/heka-#{version.gsub('.', '_')}-darwin-amd64.dmg"
  name 'heka'
  homepage 'https://github.com/mozilla-services/heka'
  license :mpl
  tags :vendor => 'Mozilla'

  pkg "heka-#{version.gsub('.', '_')}-darwin-amd64.pkg"

  uninstall :pkgutil => 'com.Mozilla.heka'
end
