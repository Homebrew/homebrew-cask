cask "cozy-drive" do
  version "3.23.0"
  sha256 "51e5507c82230b70cd7dfd54bf91f4c1439494317d4f922c425b4278253029d5"

  # nuts.cozycloud.cc/ was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx"
  name "Cozy Drive"
  homepage "https://cozy.io/"

  app "Cozy Drive.app"
end
