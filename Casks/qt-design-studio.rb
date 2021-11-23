cask "qt-design-studio" do
  version "2.2.1"
  sha256 "396523b1c00c808e989917e492df05a3ecb1ebaf0f496fff5881e2c735157d68"

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
