cask "activedock" do
  version "2.56,2056"
  sha256 "c8a5c5bdceec8f0623e02250d3557ca5367a1efe3204a2711249c66f1311bbd4"

  # macplus-software.com/ was verified as official when first introduced to the cask
  url "https://macplus-software.com/downloads/ActiveDock.zip"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
