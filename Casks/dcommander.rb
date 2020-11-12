cask "dcommander" do
  version "3870"
  sha256 "5614ed71d9a6b2a5a0dc744ae130cc12e62647d8ab9db0bafbe4ac16bd93ff69"

  url "https://devstorm-apps.com/dc/download.php"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://devstorm-apps.com/dc/download.php"
  name "DCommander"
  homepage "https://devstorm-apps.com/dc/"

  app "DCommander.app"

  zap trash: "~/Library/Containers/com.devstorm.dc3"
end
