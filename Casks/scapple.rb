cask "scapple" do
  version "1.4,1122"
  sha256 :no_check

  url "https://scrivener.s3.amazonaws.com/Scapple.dmg",
      verified: "scrivener.s3.amazonaws.com/"
  appcast "https://www.literatureandlatte.com/downloads/scapple/scapple.xml"
  name "Scapple"
  desc "Notepad software"
  homepage "https://www.literatureandlatte.com/scapple.php"

  app "Scapple.app"
end
