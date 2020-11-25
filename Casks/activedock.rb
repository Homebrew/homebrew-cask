cask "activedock" do
  version "2.58,2058"
  sha256 "3feef45a6f708281b559b61d03ca14fc5dd451da6dcd466dcc94194df199ebd7"

  # macplus-software.com/ was verified as official when first introduced to the cask
  url "https://macplus-software.com/downloads/ActiveDock.zip"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
