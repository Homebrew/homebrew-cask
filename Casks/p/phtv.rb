cask "phtv" do
  arch arm: "arm64", intel: "intel"

  version "3.6.8"
  sha256 arm:   "d4a341bf39ec6aa2c46bacec219518b69742318ecf2a94f4e61bb436b7a1ebfc",
         intel: "379790224f5faf3783150487c166db090bd050966ae6c5546a01f841948b7d29"

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
