cask "marvin" do
  version "1.55.1"
  sha256 "e784c5145d20a7b1ec2ae9a95d151bb857b6f51fe0bfa53b123bf6d1b0948947"

  # amazingmarvin.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
  name "Amazing Marvin"
  homepage "https://www.amazingmarvin.com/"

  app "Marvin.app"
end
