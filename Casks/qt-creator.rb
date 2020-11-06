cask "qt-creator" do
  version "4.13.2"
  sha256 "f589f485e1173c00aefb32a7d9a5e147e25e24bd85bc87409e37aecf5daf049b"

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
