cask 'qt-creator' do
  version '4.0.1'
  sha256 '726da47bc13fed63aea34156bb58ab3b05217e51adeb07d50cecd59c9c57509f'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
