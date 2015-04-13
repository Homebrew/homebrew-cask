cask :v1 => 'qt-creator' do
  version '3.3.2'
  sha256 '6b44dd8e01251b485dad7d412db1898b297f129993fea74694be1d7688e845ba'

  url "http://download.qt-project.org/official_releases/qtcreator/#{version.sub(%r{^(\d+\.\d+).*},'\1')}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  homepage 'http://qt-project.org/'
  license :oss

  app 'Qt Creator.app'
end
