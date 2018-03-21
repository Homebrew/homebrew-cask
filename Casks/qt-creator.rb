cask 'qt-creator' do
  version '4.5.2'
  sha256 '3e834ed78163b31eb924de36c57b5dd25105b9ee23aba9edbd594eb01ab57997'

  url "http://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www1.qt.io/developers/'

  app 'Qt Creator.app'
end
