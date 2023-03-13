cask "dcommander" do
  version "3.9.4.2"
  sha256 :no_check

  url "https://devstorm-apps.com/dc/download.php"
  name "DCommander"
  desc "Two-pane file manager"
  homepage "https://devstorm-apps.com/dc/"

  livecheck do
    url "https://devstorm-apps.com/dc/download.php"
    strategy :header_match do |headers|
      headers["content-disposition"][/DCommander-(\d+)\.dmg/i, 1].split("", 4).join(".")
    end
  end

  app "DCommander.app"

  zap trash: "~/Library/Containers/com.devstorm.dc3"
end
