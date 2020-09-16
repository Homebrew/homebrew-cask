cask "cozy-drive" do
  version "3.22.0"
  sha256 "ba0cf797aa8bef5e03dd6e243a3ffc614e1e7c33f96be39c843a68df8cf7ec19"

  # nuts.cozycloud.cc/ was verified as official when first introduced to the cask
  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx"
  name "Cozy Drive"
  homepage "https://cozy.io/"

  app "Cozy Drive.app"
end
