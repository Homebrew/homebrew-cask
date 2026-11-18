cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.7.2"
  sha256 arm:   "edfeb65830cd0c621e66672ec072211a571617b136796ef707b56356621f88e0",
         intel: "0fb2c90638c5a9f15351d511efb6ffb66cbb46d126877e16ee086d1d1b3102fc"

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
    "~/Library/HTTPStorages/com.phamhungtien.phtv",
    "~/Library/Logs/PHTV",
    "~/Library/Preferences/com.phamhungtien.phtv.plist",
  ]
end
