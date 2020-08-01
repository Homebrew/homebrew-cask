cask "freeyourmusic" do
  version "5.6.0"
  sha256 "41ba6ce4dd5ebbf8b14cb0be91a3f6bfa55ec1e1be9d2029cbc0c79cd46a265f"

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic.app"
end
