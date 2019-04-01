cask 'qt3dstudio' do
  version '2.3.0'
  sha256 '6c736cd20a4fcdfeb5dc643e1f59e7a027cbe41c66b4ee79556bcb7ffe35d280'

  url "https://download.qt.io/official_releases/qt3dstudio/#{version.major_minor}/qt-3dstudio-opensource-mac-x64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qt3dstudio/'
  name 'Qt 3D Studio'
  homepage 'https://www.qt.io/developers/'

  installer manual: "qt-3dstudio-opensource-mac-x64-#{version}.app"

  uninstall delete: "~/Applications/qt3dstudio-#{version}"
end
