cask "qt-creator" do
  version "4.14.1"
  sha256 "7fb68dff6ed1fd3b02bd82857e9394afa240fb89d2bdfe8a672335319d9906e6"

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  name "Qt Creator"
  homepage "https://www.qt.io/developers/"

  livecheck do
    url "https://download.qt.io/official_releases/qtcreator/"
    strategy :page_match
    regex(%r{href=.*?/qt-creator-opensource-mac-x86_64-(\d+(?:\.\d+)*)\.dmg}i)
  end

  depends_on macos: ">= :sierra"

  app "Qt Creator.app"

  zap trash: [
    "~/Library/Preferences/com.qtproject.QtCreator.plist",
    "~/Library/Preferences/org.qt-project.qtcreator.plist",
    "~/Library/Saved Application State/org.qt-project.qtcreator.savedState",
  ]
end
