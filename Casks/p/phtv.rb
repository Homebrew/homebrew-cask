cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.7.4"
  sha256 arm:   "4104c6c35db18729b28ab23b4ea5475d0ad3ef90cd03039384366ed065e211c2",
         intel: "409be3b77a19240e3f74fec4687cfee6ef8b94ba9273a3a2b51623bf70dedf3a"

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
