cask "qt-design-studio" do
  version "1.6.0"
  sha256 "4e3bee4715b05014971fb23d2475e4a28aa4cb283380453cc8fff138cd19a822"

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  appcast "https://download.qt.io/official_releases/qtdesignstudio/"
  name "Qt Design Studio"
  homepage "https://www.qt.io/ui-framework"

  depends_on macos: ">= :sierra"

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
