cask "scapple" do
  version "1.4"
  sha256 "65254fc8178028dd9e006e5e3158b1284833dde56efcca4b3dd7758d406251b2"

  # scrivener.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/Scapple.dmg"
  appcast "https://www.literatureandlatte.com/downloads/scapple/scapple.xml"
  name "Scapple"
  desc "Notepad software"
  homepage "https://www.literatureandlatte.com/scapple.php"

  app "Scapple.app"
end
