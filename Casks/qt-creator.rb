cask 'qt-creator' do
  version '4.0.2'
  sha256 'cf651ae9dca43578baff53ed4e4793aa54a2c5693b752db13d703beec0d85814'

  url "http://download.qt.io/official_releases/qtcreator/#{version.to_f}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'https://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
