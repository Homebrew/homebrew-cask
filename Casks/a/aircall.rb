cask "aircall" do
  version "2.36.10"
  sha256 "3a66abeee309dbbb759d924ac7ce1e87307d15c310c6c5880f8b4dd41b327e85"

  url "https://download-electron.aircall.io/Aircall-#{version}.dmg"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  livecheck do
    url "https://aircall.io/api/app-infos/"
    strategy :json do |json|
      json["name"]
    end
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Aircall.app"

  zap trash: [
    "~/Library/Application Support/Aircall",
    "~/Library/Caches/io.aircall.phone",
    "~/Library/Caches/io.aircall.phone.ShipIt",
    "~/Library/Preferences/io.aircall.phone.plist",
  ]
end
