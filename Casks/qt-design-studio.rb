cask "qt-design-studio" do
  version "1.6.1"
  sha256 "3211b7c7147807ba08e3a57a38c1bca7f8038921e861a51d9f92110bae7f408c"

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  appcast "https://download.qt.io/official_releases/qtdesignstudio/"
  name "Qt Design Studio"
  homepage "https://www.qt.io/ui-framework"

  depends_on macos: ">= :sierra"

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
