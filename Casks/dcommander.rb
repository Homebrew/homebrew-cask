cask "dcommander" do
  version "3860"
  sha256 "52dc4a71e545b8e03fcb16ee42bbba59e4a16f827144c10053daa925b492665e"

  url "https://devstorm-apps.com/dc/download.php"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://devstorm-apps.com/dc/download.php"
  name "DCommander"
  homepage "https://devstorm-apps.com/dc/"

  app "DCommander.app"

  zap trash: "~/Library/Containers/com.devstorm.dc3"
end
