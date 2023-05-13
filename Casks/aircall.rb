cask "aircall" do
  version "2.32.2"
  sha256 "c80d8ccd55b08f3ec8a85a7651a1ff81e240c756d299caaa2930b2b6b2e63687"

  url "https://download-electron.aircall.io/Aircall-#{version}.dmg"
  name "Aircall"
  desc "Cloud-based call center and phone system software"
  homepage "https://aircall.io/"

  livecheck do
    url "https://aircall.io/download/"
    regex(/Aircall[._-](\d+(?:\.\d+)+)\.(dmg|pkg)/i)
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
