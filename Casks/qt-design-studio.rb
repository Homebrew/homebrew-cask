cask "qt-design-studio" do
  version "2.3.1"
  sha256 "c085a6acbe89e53a7e27ae8564e4bf8df8cc459e536ec2319e8f897718d7c66c"

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
