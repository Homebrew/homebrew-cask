cask "freeyourmusic" do
  version "5.6.1"
  sha256 "22f02cc0ca2bd22c9fbf4989d5839e9a3cc72b3dc742bfb80869fea91aef3a90"

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic/FreeYourMusic.app"
end
