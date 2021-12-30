cask "qt-design-studio" do
  version "2.2.2"
  sha256 "6fecf96a1fa749d3dce737930b75dbcd0036348452a945050e7ab0de4dfe3378"

  url "https://download.qt.io/official_releases/qtdesignstudio/#{version}/qt-designstudio-mac-x86_64-#{version}-community.dmg"
  name "Qt Design Studio"
  desc "User Interface Design Tools for Applications"
  homepage "https://www.qt.io/product/ui-design-tools"

  livecheck do
    url "https://download.qt.io/official_releases/qtdesignstudio/"
    regex(%r{href=.*?(\d+(?:\.\d+)+)/}i)
  end

  depends_on macos: ">= :sierra"

  installer manual: "qt-designstudio-mac-x86_64-#{version}-community.app"

  uninstall delete: "~/Applications/QtDesignStudio-#{version}-community"
end
