class QtCreator < Cask
  version '3.2.1'
  sha256 'cfe2c0b3f40306397637182f86d0d26d954569baeec556b76804da1bfe403f10'

  url "https://download.qt-project.org/official_releases/qtcreator/3.2/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  homepage 'http://qt-project.org/'

  app 'Qt Creator.app'
end
