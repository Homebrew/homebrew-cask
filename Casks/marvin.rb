cask "marvin" do
  version "1.56.2"
  sha256 "7d47733293e00eb2bd2ed708c4d3e24aec5f8838e0f93a7140c83b6558206c89"

  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg",
      verified: "amazingmarvin.s3.amazonaws.com/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
  name "Amazing Marvin"
  homepage "https://www.amazingmarvin.com/"

  app "Marvin.app"
end
