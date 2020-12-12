cask "dcommander" do
  version "3881"
  sha256 :no_check

  url "https://devstorm-apps.com/dc/download.php"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://devstorm-apps.com/dc/download.php"
  name "DCommander"
  homepage "https://devstorm-apps.com/dc/"

  app "DCommander.app"

  zap trash: "~/Library/Containers/com.devstorm.dc3"
end
