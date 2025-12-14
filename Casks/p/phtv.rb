cask "phtv" do
  version "1.0.0"
  sha256 "6ff2f005a9e3d37efc9feea5a0c43310e46595c26db7204b19b02c9e3a0a96e1"

  url "https://github.com/PhamHungTien/PHTV/releases/download/v#{version}/PHTV_#{version}.dmg"
  name "PHTV"
  desc "Vietnamese Input Method - Bộ gõ tiếng Việt hiện đại"
  homepage "https://github.com/PhamHungTien/PHTV"

  depends_on macos: :sonoma

  app "PHTV.app"

  zap trash: [
    "~/Library/Application Support/PHTV",
    "~/Library/Caches/com.phtv.app",
    "~/Library/Preferences/com.phtv.app.plist",
  ]
end
