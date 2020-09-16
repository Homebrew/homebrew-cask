cask "scapple" do
  version "1.3.4"
  sha256 "0f81d00286f0c49fafc03966bfb2c4dd9fc036495d69def64988d489223e7892"

  # scrivener.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://scrivener.s3.amazonaws.com/Scapple.dmg"
  appcast "https://www.literatureandlatte.com/downloads/scapple/scapple.xml"
  name "Scapple"
  desc "Notepad software"
  homepage "https://www.literatureandlatte.com/scapple.php"

  app "Scapple.app"
end
