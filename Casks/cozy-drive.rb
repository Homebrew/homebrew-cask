cask "cozy-drive" do
  version "3.24.1"
  sha256 "5aa3a2e7bf77bd889bf1f058a4e96b6eef56a4015b890ffe44ebf378a7de9e5f"

  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg",
      verified: "nuts.cozycloud.cc/"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://nuts.cozycloud.cc/download/channel/stable/osx"
  name "Cozy Drive"
  homepage "https://cozy.io/"

  app "Cozy Drive.app"
end
