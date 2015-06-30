cask :v1 => 'qt-creator' do
  version '3.4.0'
  sha256 '13a232534adf50f928ebf1ad1fde912a423cd7524d86d0c3d6a8efd321d3f858'

  url "http://download.qt-project.org/official_releases/qtcreator/#{version.sub(%r{^(\d+\.\d+).*},'\1')}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name 'Qt Creator'
  homepage 'http://www.qt.io/developers/'
  license :gpl

  app 'Qt Creator.app'
end
