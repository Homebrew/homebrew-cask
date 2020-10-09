cask "freeyourmusic" do
  version "5.6.4"
  sha256 "5e811401ce1f7398a0e0a79f625178f954b67dd9d5fa92b4f9fa2d98702067bb"

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic.app"
end
