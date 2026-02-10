cask "macloggerdx" do
  version "6.59"
  sha256 "5caed021a5737d4cc809864752880690dbaa9881dd371253416006d6336497ab"

  url "https://www.dogparksoftware.com/files/MacLoggerDX#{version.no_dots}.dmg"
  name "MacLoggerDX"
  desc "Ham radio logging and rig control software"
  homepage "https://www.dogparksoftware.com/MacLoggerDX.html"

  livecheck do
    url :homepage
    regex(/Download:\s*v?(\d+(?:\.\d+)+)[\s<]/im)
  end

  conflicts_with cask: "macloggerdx@beta"

  app "MacLoggerDX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/MacLoggerDX Help*",
    "~/Library/Caches/com.dogparksoftware.MacLoggerDX",
    "~/Library/HTTPStorages/com.dogparksoftware.MacLoggerDX",
    "~/Library/Preferences/com.dogparksoftware.MacLoggerDX*.plist",
  ]
end
