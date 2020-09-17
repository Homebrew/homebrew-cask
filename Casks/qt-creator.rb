cask "qt-creator" do
  version "4.13.1"
  sha256 "90a4ae6250dc5635c416021133f0b204ea54e119279e98da7025f0d061c701aa"

  url "https://download.qt.io/official_releases/qtcreator/#{version.major_minor}/#{version}/qt-creator-opensource-mac-x86_64-#{version}.dmg"
  appcast "https://download.qt.io/official_releases/qtcreator/",
          must_contain: version.major_minor
  name "Qt Creator"
  homepage "https://www.qt.io/developers/"

  depends_on macos: ">= :sierra"

  app "Qt Creator.app"

  zap trash: [
    "~/Library/Preferences/com.qtproject.QtCreator.plist",
    "~/Library/Preferences/org.qt-project.qtcreator.plist",
    "~/Library/Saved Application State/org.qt-project.qtcreator.savedState",
  ]
end
