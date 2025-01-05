cask "roaringapps" do
  version "1.7.2"
  sha256 "e818ba7edf1020dc4a5a3a97c49e947ca2336e33e77087015a2d8f46f13fe7b9"

  url "https://roaringapps.com/downloads/RoaringApps-#{version}.zip"
  name "RoaringApps"
  desc "Show installed app compatibility information"
  homepage "https://roaringapps.com/mac-app"

  livecheck do
    url :homepage
    regex(%r{href=.*?/RoaringApps-(\d+(?:\.\d+)*)\.zip}i)
  end

  depends_on macos: ">= :high_sierra"

  app "RoaringApps.app"

  zap trash: [
    "~/Library/Application Support/RoaringApps",
    "~/Library/Caches/com.brycecameron.RoaringApps",
    "~/Library/Cookies/com.brycecameron.RoaringApps.binarycookies",
    "~/Library/Preferences/com.brycecameron.RoaringApps.plist",
  ]
end
