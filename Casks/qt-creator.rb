cask "qt-creator" do
  version "4.14.0"
  sha256 "922097dd07ef7ba967b04608bf95e6c7b6755493baf3393d751c6ad889131a3d"

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
