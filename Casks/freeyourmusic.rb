cask "freeyourmusic" do
  version "5.7.2"
  sha256 "5eb0c3afbfd09791dc226293786237fd716be21c12e5021e3741de1f79415b94"

  url "https://dzqeytqqx888.cloudfront.net/FreeYourMusic-#{version}.dmg",
      verified: "dzqeytqqx888.cloudfront.net/"
  appcast "https://stamp-live.s3.amazonaws.com/latest-mac.yml"
  name "FreeYourMusic⁩"
  homepage "https://freeyourmusic.com/"

  app "FreeYourMusic.app"
end
