cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.6.9"
  sha256 arm:   "5334185e3cf3bc60eba515d39b6994a33628176433ce5c268fccf1957f2d4f88",
         intel: "f22c9f7489540cdb382a7d58b1a399773c378f2101ccb606ba0e5588efd25b83"

  url "https://github.com/PhamHungTien/PHTV/releases/download/v#{version}/PHTV-#{version}-#{arch}.dmg"
  name "PHTV"
  name "Precision Hybrid Typing Vietnamese"
  desc "Vietnamese input method"
  homepage "https://phamhungtien.com/PHTV/"

  auto_updates true
  depends_on macos: :sonoma

  app "PHTV.app"

  uninstall quit: "com.phamhungtien.phtv"

  zap trash: [
    "~/Library/Application Support/PHTV",
    "~/Library/Caches/com.phamhungtien.phtv",
    "~/Library/Logs/PHTV",
    "~/Library/Preferences/com.phamhungtien.phtv.plist",
  ]
end
