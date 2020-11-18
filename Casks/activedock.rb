cask "activedock" do
  version "2.57,2057"
  sha256 "42abb31bf56355199991e6f654380e641252ea2af03fe19c1f01800c3dcda2c7"

  # macplus-software.com/ was verified as official when first introduced to the cask
  url "https://macplus-software.com/downloads/ActiveDock.zip"
  appcast "https://macplus-software.com/downloads/ActiveDock.xml"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  depends_on macos: ">= :high_sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
