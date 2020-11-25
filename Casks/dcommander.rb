cask "dcommander" do
  version "3881"
  sha256 "fc6b5b1424d892c821aa20a32a082f0a6f8a1e233b66459de43d05ad9d9b124b"

  url "https://devstorm-apps.com/dc/download.php"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://devstorm-apps.com/dc/download.php"
  name "DCommander"
  homepage "https://devstorm-apps.com/dc/"

  app "DCommander.app"

  zap trash: "~/Library/Containers/com.devstorm.dc3"
end
