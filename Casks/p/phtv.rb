cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.7.3"
  sha256 arm:   "5cf39308d4d00e668c8f6d12dd0162fb4e1a6d53e69146b8b7e70d81582fd894",
         intel: "e37ec365b155180e2df91920c5d75949d139e8b6cf7379476be1d9bba5917531"

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
