cask "phtv" do
  version "2.0.8"
  sha256 "2a8f1ea37fc85481e0838d150fa4913ed6690a01a92d30534980e01261721b55"

  url "https://github.com/PhamHungTien/PHTV/releases/download/v#{version}/PHTV-#{version}.dmg",
      verified: "github.com/PhamHungTien/"
  name "PHTV"
  desc "Vietnamese input method for macOS"
  homepage "https://phamhungtien.com/PHTV/"

  auto_updates true

  livecheck do
    url "https://phamhungtien.github.io/PHTV/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :ventura"

  app "PHTV.app"

  zap trash: [
    "~/Library/Application Support/PHTV",
    "~/Library/Caches/com.phamhungtien.phtv",
    "~/Library/Logs/PHTV",
    "~/Library/Preferences/com.phamhungtien.phtv.plist",
  ]
end
