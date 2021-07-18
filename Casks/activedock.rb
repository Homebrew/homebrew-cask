cask "activedock" do
  version "2.97,2197"
  sha256 :no_check

  url "https://macplus-software.com/downloads/ActiveDock.zip",
      verified: "macplus-software.com/"
  name "ActiveDock"
  desc "Customizable dock, application launcher, dock replacement"
  homepage "https://www.noteifyapp.com/activedock/"

  livecheck do
    url "https://macplus-software.com/downloads/ActiveDock.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "ActiveDock #{version.before_comma.major}.app"
end
