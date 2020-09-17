cask "qt-creator" do
  version "4.13.0"
  sha256 "b2bb06a761b2c67034d9902a03a9fb6af032ec91ddb388bd4a8de9f3d9da8549"

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
