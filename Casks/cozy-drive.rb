cask "cozy-drive" do
  version "3.24.1"
  sha256 "5aa3a2e7bf77bd889bf1f058a4e96b6eef56a4015b890ffe44ebf378a7de9e5f"

  url "https://nuts.cozycloud.cc/download/channel/stable/CozyDrive-#{version}.dmg",
      verified: "nuts.cozycloud.cc/"
  name "Cozy Drive"
  homepage "https://cozy.io/"

  livecheck do
    url "https://nuts.cozycloud.cc/download/channel/stable/osx"
    strategy :header_match
  end

  app "Cozy Drive.app"
end
