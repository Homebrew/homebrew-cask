cask "aircall" do
  version "2.32.1"
  sha256 "080e0cb7a8b1f18a76c8daaeb1a90246eedb2e2cc6a38df0dcb35ea942179e83"

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
