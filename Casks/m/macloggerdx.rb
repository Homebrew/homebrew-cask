cask "macloggerdx" do
  version "6.57"
  sha256 "1b7dca698116f3a36e4e4eadb31894a11e81fa81b2d6615e66b33ac18c4f5f64"

  url "https://www.dogparksoftware.com/files/MacLoggerDX#{version.no_dots}.dmg"
  name "MacLoggerDX"
  desc "Ham radio logging and rig control software"
  homepage "https://www.dogparksoftware.com/MacLoggerDX.html"

  livecheck do
    url :homepage
    regex(/Download:\s*v?(\d+(?:\.\d+)+)[\s<]/im)
  end

  conflicts_with cask: "macloggerdx@beta"
  depends_on macos: ">= :high_sierra"

  app "MacLoggerDX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/MacLoggerDX Help*",
    "~/Library/Caches/com.dogparksoftware.MacLoggerDX",
    "~/Library/HTTPStorages/com.dogparksoftware.MacLoggerDX",
    "~/Library/Preferences/com.dogparksoftware.MacLoggerDX*.plist",
  ]
end
