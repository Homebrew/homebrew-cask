cask "softraid" do
  version "5.8.4"
  sha256 "5d5384403cd2e6b32e62cfe70bddbb82ce1ef4db88b0b197f5e08764e9a586c5"

  # download.owcdigital.com/softraid/ was verified as official when first introduced to the cask
  url "https://download.owcdigital.com/softraid/mac/#{version.major}/softraid/SoftRAID%20#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.owcdigital.com/softraid5/mac"
  name "SoftRAID"
  homepage "https://www.softraid.com/"

  app "SoftRAID #{version}/SoftRAID #{version}.app"
end
