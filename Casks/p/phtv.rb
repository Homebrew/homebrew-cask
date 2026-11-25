cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.7.7"
  sha256 arm:   "f89d5cb92775444356841741944624958b22ed7097db67f580a4d726a00aca70",
         intel: "fd730d303de69f528cd7bab3f48a75f76b6d87681d16210978fa4cfb0629dda9"

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
