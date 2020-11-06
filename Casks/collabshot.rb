cask "collabshot" do
  version "1.2.3.985"
  sha256 "a2d298dc2e6cf813c90c5dc64d9eaedf5ff4ef2e0ad45001d35ecefc511390c3"

  # collabshot.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://collabshot.s3.amazonaws.com/desktop/builds/mac/Collabshot_#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://api.collabshot.com/desktop/latest/mac"
  name "Collabshot"
  homepage "https://www.collabshot.com/"

  app "Collabshot.app"
end
