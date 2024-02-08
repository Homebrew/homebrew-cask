cask "roaringapps" do
  version "1.6.2"
  sha256 "d2afb90bb245bd885a9962d75a1947a56163d4fc315f1210401a83186cea1de8"

  url "https://roaringapps.com/downloads/RoaringApps-#{version}.zip"
  name "RoaringApps"
  desc "Show installed app compatibility information"
  homepage "https://roaringapps.com/mac-app"

  livecheck do
    url :homepage
    regex(%r{href=.*?/RoaringApps-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "RoaringApps.app"

  zap trash: [
    "~/Library/Application Support/RoaringApps",
    "~/Library/Caches/com.brycecameron.RoaringApps",
    "~/Library/Cookies/com.brycecameron.RoaringApps.binarycookies",
    "~/Library/Preferences/com.brycecameron.RoaringApps.plist",
  ]
end
