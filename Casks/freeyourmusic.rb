cask "freeyourmusic" do
  version "5.6.6"
  sha256 "eac62185df8a22e09a0c1f0ebfab26078b46956e8663643dd9a8442f03130b0d"

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic.app"
end
