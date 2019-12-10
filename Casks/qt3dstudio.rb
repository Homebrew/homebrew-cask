cask 'qt3dstudio' do
  version '2.5.0'
  sha256 '904c6c092ad3ed588bbe47e55f949facf5250abacc6167dc48ac47fc4ee80b22'

  url "https://download.qt.io/official_releases/qt3dstudio/#{version.major_minor}/qt-3dstudio-opensource-mac-x64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qt3dstudio/',
          configuration: version.major_minor
  name 'Qt 3D Studio'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  installer manual: "qt-3dstudio-opensource-mac-x64-#{version}.app"

  uninstall delete: "~/Applications/qt3dstudio-#{version}"
end
