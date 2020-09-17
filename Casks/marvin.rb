cask "marvin" do
  version "1.55.0"
  sha256 "cf5e6c409ae2622fda4ba943714760bddb5193bee30db79a314ead9c11828140"

  # amazingmarvin.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
  name "Amazing Marvin"
  homepage "https://www.amazingmarvin.com/"

  app "Marvin.app"
end
