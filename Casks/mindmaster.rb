cask "mindmaster" do
  version "8.5.1,851"
  sha256 :no_check

  url "https://download.edrawsoft.com/mindmaster_full5378.dmg"
  name "MindMaster"
  homepage "https://www.edrawsoft.com/mindmaster/"

  livecheck do
    skip "unversioned URL"
  end

  app "MindMaster.app"
end
