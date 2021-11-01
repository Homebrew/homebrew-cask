cask "qt-design-studio" do
  version "2.2.0"
  sha256 "9c4f3325d44e91ccd95a02c06f2510b5ea924a11e1fd25d36559d3e4d9f1845e"

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  name "Qt Design Studio"
  desc "User Interface Design Tools for Applications"
  homepage "https://www.qt.io/product/ui-design-tools"

  livecheck do
    url "https://download.qt.io/official_releases/qtdesignstudio/"
    regex(%r{href=.*?(\d+(?:\.\d+)*)/}i)
  end

  depends_on macos: ">= :sierra"

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
