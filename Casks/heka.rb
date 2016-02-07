cask 'heka' do
  version '0.10.0'
  sha256 '9416e6ce0e3fe56926df86607d8e0c286cd0e9773d9038c80887558ae6f41c55'

  url "https://github.com/mozilla-services/heka/releases/download/v#{version}/heka-#{version.gsub('.', '_')}-darwin-amd64.dmg"
  name 'Mozilla heka'
  homepage 'https://github.com/mozilla-services/heka'
  license :mpl

  pkg "heka-#{version.gsub('.', '_')}-darwin-amd64.pkg"

  uninstall pkgutil: 'com.Mozilla.heka'
end
