cask :v1 => 'qt-creator' do
  version '3.4.2'
  sha256 '2908e39ebc1710746f2deee00ccf09758c4c1563231bf6940f154376b0ec6f4c'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'http://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
