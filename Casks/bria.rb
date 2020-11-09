cask "bria" do
  version "6.2.2_104872"
  sha256 "f8c8a6c6c9ee3714a7144428be85ac06094ba7095559f80a418189c97ca9f964"

  # counterpath.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  app "Bria.app"
end
