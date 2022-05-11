cask "scapple" do
  version "1.4.1,8168"
  sha256 :no_check

  url "https://scrivener.s3.amazonaws.com/Scapple.dmg",
      verified: "scrivener.s3.amazonaws.com/"
  name "Scapple"
  desc "Notepad software"
  homepage "https://www.literatureandlatte.com/scapple.php"

  livecheck do
    url "https://www.literatureandlatte.com/downloads/scapple/scapple.xml"
    strategy :sparkle
  end

  app "Scapple.app"
end
