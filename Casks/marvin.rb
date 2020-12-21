cask "marvin" do
  version "1.57.0"
  sha256 "4b92c8a184d4fd0e5675d386bbaaf047047af09fbec22a45ddca5ffe84de033b"

  url "https://amazingmarvin.s3.amazonaws.com/Marvin-#{version}.dmg",
      verified: "amazingmarvin.s3.amazonaws.com/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=http://amazingmarvin.s3-website-us-east-1.amazonaws.com/Marvin.dmg"
  name "Amazing Marvin"
  homepage "https://www.amazingmarvin.com/"

  app "Marvin.app"
end
