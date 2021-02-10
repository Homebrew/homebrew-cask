cask "bootchamp" do
  version "1.7"
  sha256 :no_check

  url "https://kainjow.com/downloads/BootChamp.zip"
  name "BootChamp"
  homepage "https://www.kainjow.com/"

  livecheck do
    url "https://kainjow.com/updates/bootchamp.xml"
    strategy :sparkle
  end

  app "BootChamp.app"
end
