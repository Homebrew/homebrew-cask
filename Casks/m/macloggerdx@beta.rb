cask "macloggerdx@beta" do
  version "6.52b1"
  sha256 :no_check

  url "https://www.dogparksoftware.com/files/MacLoggerDX.beta.dmg"
  name "MacLoggerDX"
  desc "Ham radio logging and rig control software"
  homepage "https://www.dogparksoftware.com/MacLoggerDX.html"

  livecheck do
    url :homepage
    regex(/Download:\s*v?(\d+(?:\.\d+)+b\d+)/i)
  end

  conflicts_with cask: "macloggerdx"
  depends_on macos: ">= :high_sierra"

  app "MacLoggerDX.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/MacLoggerDX Help*",
    "~/Library/Caches/com.dogparksoftware.MacLoggerDX",
    "~/Library/HTTPStorages/com.dogparksoftware.MacLoggerDX",
    "~/Library/Preferences/com.dogparksoftware.MacLoggerDX*.plist",
  ]
end
