cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.6.5"
  sha256 arm:   "ecc58dd6bcd75af8ecb8ea82f6d38257f974f63a30cfdc2ee30719987f299568",
         intel: "f9fce1481a10f566b0aafaa98dc0a3b80aa52c3b3dc432d58b5404b23fb91f85"

  url "https://github.com/PhamHungTien/PHTV/releases/download/v#{version}/PHTV-#{version}-#{arch}.dmg"
  name "PHTV"
  name "Precision Hybrid Typing Vietnamese"
  desc "Vietnamese input method"
  homepage "https://phamhungtien.com/PHTV/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "PHTV.app"

  zap trash: [
    "~/Library/Application Support/PHTV",
    "~/Library/Caches/com.phamhungtien.phtv",
    "~/Library/Logs/PHTV",
    "~/Library/Preferences/com.phamhungtien.phtv.plist",
  ]
end
