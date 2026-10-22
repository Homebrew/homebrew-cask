cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.7.1"
  sha256 arm:   "c33eda437846d4041353c665def7e1e8e1ca0ddd9d8fa766c53e73c712570e60",
         intel: "b398fb2e9b618fc52a593d688c4d2112471c339d76006c2c406bb522b432faaf"

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
