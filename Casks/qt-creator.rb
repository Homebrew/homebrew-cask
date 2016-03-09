cask 'qt-creator' do
  version '3.6.0'
  sha256 '6aedd15f0e57dcf8211892aba04853ecb43f2a142d856e74e26dd3c88d95639f'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
