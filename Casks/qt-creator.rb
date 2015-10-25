cask :v1 => 'qt-creator' do
  version '3.5.1'
  sha256 '63b1bd09f787a698e9ad5d2ceb1ba63e3275a341c4e1b91d9ef8995d4b98532f'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'http://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
