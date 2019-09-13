cask 'qt-design-studio' do
  version '1.3.0'
  sha256 '3eaa65806214f364cda3ffa103fd65bf49e3d351a4dd2a5027e7e11d58e16fae'

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  name 'Qt Design Studio'
  homepage 'https://www.qt.io/ui-framework'

  depends_on macos: '>= :sierra'

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
