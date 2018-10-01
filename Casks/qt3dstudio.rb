cask 'qt3dstudio' do
  version '2.1.0'
  sha256 'a17c33c1cb344ce79ac80d9313b9760dfef85ae14f1d26e09deb4f39529b7dbd'

  url "https://download.qt.io/official_releases/qt3dstudio/#{version.major_minor}/qt-3dstudio-opensource-mac-x64-#{version}.dmg"
  name 'Qt 3D Studio'
  homepage 'https://www.qt.io/developers/'

  installer manual: "qt-3dstudio-opensource-mac-x64-#{version}.app"

  uninstall delete: "~/Applications/qt3dstudio-#{version}"
end
