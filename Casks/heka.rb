cask :v1 => 'heka' do
  version '0.9.1'
  sha256 'edea54077c5a23848100310bfb8777c02bb2d7a4e52bfba0d0456852b1140395'

  url "https://github.com/mozilla-services/heka/releases/download/v#{version}/heka-#{version.gsub('.', '_')}-darwin-amd64.dmg"
  name 'heka'
  homepage 'https://github.com/mozilla-services/heka'
  license :mpl
  tags :vendor => 'Mozilla'

  pkg "heka-#{version.gsub('.', '_')}-darwin-amd64.pkg"

  uninstall :pkgutil => 'com.Mozilla.heka'
end
