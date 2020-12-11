cask "bria" do
  version "6.3.0_105536"
  sha256 "ad71abb778fc6d3e591755f3632fcf84fb27bb9ab6ac6f5847a4167cbbf1d65d"

  # counterpath.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  app "Bria.app"
end
