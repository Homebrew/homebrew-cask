cask 'qt3dstudio' do
  version '2.4.0'
  sha256 '5f5fdf827564ea45209c755a232642b63a24ce459d7c06714aa6edf49604d977'

  url "https://download.qt.io/official_releases/qt3dstudio/#{version.major_minor}/qt-3dstudio-opensource-mac-x64-#{version}.dmg"
  appcast 'https://download.qt.io/official_releases/qt3dstudio/',
          configuration: version.major_minor
  name 'Qt 3D Studio'
  homepage 'https://www.qt.io/developers/'

  depends_on macos: '>= :sierra'

  installer manual: "qt-3dstudio-opensource-mac-x64-#{version}.app"

  uninstall delete: "~/Applications/qt3dstudio-#{version}"
end
