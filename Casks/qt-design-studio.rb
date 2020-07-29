cask 'qt-design-studio' do
  version '1.5.0'
  sha256 'db05cafe77ea8db26505ec4100334362e196ec5835172d7db184b3988ce2df5e'

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  name 'Qt Design Studio'
  homepage 'https://www.qt.io/ui-framework'

  depends_on macos: '>= :sierra'

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
