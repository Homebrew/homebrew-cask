cask "qt-designer" do
  version :latest
  sha256 :no_check

  url "https://build-system.fman.io/static/public/files/Qt%20Designer.dmg"
  name "Qt Designer"
  desc "Create Python GUIs with Qt in minutes"
  homepage "https://build-system.fman.io/qt-designer-download"

  depends_on macos: ">= :sierra"

  app "Qt Designer.app"

  zap trash: [
    "~/Library/Preferences/com.qtproject.Designer.plist",
    "~/Library/Saved Application State/org.qt-project.Designer.savedState",
  ]
end
