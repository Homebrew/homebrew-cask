cask 'qt-design-studio' do
  version '1.2.0'
  sha256 '37d17e4b514c72328698f13df7d8ffcb98d0e47de98f8d8f260d7ef23a3b231a'

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  name 'Qt Design Studio'
  homepage 'https://www.qt.io/ui-framework'

  depends_on macos: '>= :sierra'

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
