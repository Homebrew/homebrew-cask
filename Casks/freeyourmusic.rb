cask "freeyourmusic" do
  version "5.6.3"
  sha256 "e1467d633f25603554598e56f7e4e6a2f92dcd28b49fc5d3928bd962540aae1f"

  # dzqeytqqx888.cloudfront.net/ was verified as official when first introduced to the cask
  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic.app"
end
