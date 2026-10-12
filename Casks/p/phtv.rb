cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.6.6"
  sha256 arm:   "db72614bfe64beeda28170b8dabfd3c6f9b1ce9ccfb03dc3e8633ea76fc193c1",
         intel: "843d82e99d30af9fb0b4224870913ddc8da1c7ad55ceec42a14f50dc74961409"

  url "https://github.com/PhamHungTien/PHTV/releases/download/v#{version}/PHTV-#{version}-#{arch}.dmg"
  name "PHTV"
  name "Precision Hybrid Typing Vietnamese"
  desc "Vietnamese input method"
  homepage "https://phamhungtien.com/PHTV/"

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
