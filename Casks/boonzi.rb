cask "boonzi" do
  version "44.2"
  sha256 "613bdc7342ffb225c892c40a2acfc4e81650f70b1b55b595cbdcc74ddad87a9e"

  url "https://www.boonzi.pt/releases/boonzi.#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.boonzi.pt/server/releases/latest/mac/email@address.com"
  name "Boonzi"
  homepage "https://www.boonzi.pt/"

  app "Boonzi.app"
end
