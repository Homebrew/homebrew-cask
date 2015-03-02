cask :v1 => 'qt-creator' do
  version '3.3.1'
  sha256 '4e7f697e49330abc7883f0bbf58b5c6b7d57dc7d365f5430a9beda1cc3c5ec43'

  url "http://download.qt-project.org/official_releases/qtcreator/#{version.sub(%r{^(\d+\.\d+).*},'\1')}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  homepage 'http://qt-project.org/'
  license :oss

  app 'Qt Creator.app'
end
