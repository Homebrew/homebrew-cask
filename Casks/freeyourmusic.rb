cask "freeyourmusic" do
  version "5.6.2"
  sha256 "fa83cd96cfe20e6f53f33a6137dc4f3c223f3ea56cfb9559ab7ba8f2bbacedbf"

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic.app"
end
