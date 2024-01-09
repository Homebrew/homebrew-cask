cask "thebrain" do
  version "13.0.41.0"
  sha256 "1dbf4452eecc621e64ff4dd481e4e3209070ae5c599bfe8d4489c7cb2f774071"

  url "https://updater.thebrain.com/files/TheBrain#{version}.dmg"
  name "TheBrain"
  desc "Mind mapping and personal knowledge base software"
  homepage "https://www.thebrain.com/"

  livecheck do
    url "https://salesapi.thebrain.com/?a=doDirectDownload&id=13000"
    strategy :header_match
  end

  depends_on macos: ">= :mojave"

  app "TheBrain #{version.major}.app"

  zap trash: [
    "~/Library/Caches/com.thebrain.TheBrain",
    "~/Library/HTTPStorages/com.thebrain.TheBrain",
    "~/Library/Preferences/com.thebrain.TheBrain.plist",
  ]
end
