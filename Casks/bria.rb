cask "bria" do
  version "6.2.0_104643"
  sha256 "6938eaed642a3f8baafa374ed92c7d42800e085366823c9301e958bbd9bec4c4"

  # counterpath.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.counterpath.com/Bria6forMac"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  app "Bria.app"
end
