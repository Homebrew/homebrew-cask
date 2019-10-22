cask 'qt-creator' do
  version '4.10.1'
  sha256 '5567ba20b6389268d347f2b78f25b2471bbebd25af7ed745a2a252d14b2cbbae'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          configuration: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
