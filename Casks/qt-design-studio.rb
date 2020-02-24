cask 'qt-design-studio' do
  version '1.4.0'
  sha256 '34ec6ddce1ad8b5db8ac487256d7f2abd44e94af4f401eb12f841155a19b9f86'

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  name 'Qt Design Studio'
  homepage 'https://www.qt.io/ui-framework'

  depends_on macos: '>= :sierra'

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
