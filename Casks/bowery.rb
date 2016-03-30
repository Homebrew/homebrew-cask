cask 'bowery' do
  version '3.6.0'
  sha256 'ecdb5efe10dcf39a309e5f910d0a3712fe23147200b958a88d43c8bacf8ab1e1'

  url "http://desktop.bowery.io/#{version}_darwin_amd64.zip"
  name 'Bowery'
  homepage 'http://bowery.io/'
  license :freemium

  pkg 'bowery.pkg'

  uninstall pkgutil: 'com.bowery.desktop'
end
