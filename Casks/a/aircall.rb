cask "aircall" do
  version "3.1.2"
  sha256 "f3da0756e753e63538727d63b6ee3831b04de6ff9f640527f3391864e1867397"

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
