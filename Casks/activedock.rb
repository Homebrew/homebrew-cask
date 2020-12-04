cask "activedock" do
  version "2.60,2060"
  sha256 "9d895e16ee96c628516aee17317d749384d1185cc07dd6fd71f34f8800604d4e"

  # macplus-software.com/ was verified as official when first introduced to the cask
  url "https://macplus-software.com/downloads/ActiveDock.zip"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
