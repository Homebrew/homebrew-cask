cask "marvin" do
  version "1.54.2"
  sha256 "27039b27d10eb6957561e4bc481909be19b63a81a7bc58801034c113eb363af4"

  # amazingmarvin.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
  name "Amazing Marvin"
  homepage "https://www.amazingmarvin.com/"

  app "Marvin.app"
end
