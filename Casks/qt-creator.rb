cask 'qt-creator' do
  version '4.9.1'
  sha256 'a508505c919d9d5b3c5660afb223ecbba3ea78606b34dedc40feb8c5170d3c4a'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/'
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
