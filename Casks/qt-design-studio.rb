cask "qt-design-studio" do
  version "2.0.0"
  sha256 "757b85e0203c88570aafc687b4b6fbd0301de7cb0ba978e5ec51294ebee81799"

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  name "Qt Design Studio"
  homepage "https://www.qt.io/ui-framework"

  livecheck do
    url "https://download.qt.io/official_releases/qtdesignstudio/"
    strategy :page_match
    regex(%r{href=.*?/qt-designstudio-mac-x86_64-(\d+(?:\.\d+)*)-community\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
