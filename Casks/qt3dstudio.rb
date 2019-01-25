cask 'qt3dstudio' do
  version '2.2.0'
  sha256 '9433dc659ac4f844b85f9d5ed5b14eb051243d2296eea47ac5e1c38eec8e8fc9'

  url "https://download.qt.io/official_releases/qt3dstudio/#{version.major_minor}/qt-3dstudio-opensource-mac-x64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qt3dstudio/'
  name 'Qt 3D Studio'
  homepage 'https://www.qt.io/developers/'

  installer manual: "qt-3dstudio-opensource-mac-x64-#{version}.app"

  uninstall delete: "~/Applications/qt3dstudio-#{version}"
end
