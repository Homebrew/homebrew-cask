cask :v1 => 'qt-creator' do
  version '3.2.2'
  sha256 'ca3cca6ed88bdec0eac48e0fa0005702e9924498b0fbb9ad2250978384f24f7a'

  url "https://download.qt-project.org/official_releases/qtcreator/3.2/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  homepage 'http://qt-project.org/'
  license :unknown

  app 'Qt Creator.app'
end
