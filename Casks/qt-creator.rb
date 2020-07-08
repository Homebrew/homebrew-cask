cask 'qt-creator' do
  version '4.12.4'
  sha256 '7710ba09dad8a554e525625b2e261c163ad3db6ff2bc79764529923deae5c1a9'

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qtcreator/',
          must_contain: version.major_minor
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  app 'Qt Creator.app'
end
