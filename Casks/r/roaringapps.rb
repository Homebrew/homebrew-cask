cask "roaringapps" do
  version "1.7.0"
  sha256 "0f0eed2536d496934937f69aae399ef15b4ef8ae1998457cc9cf44c20a096745"

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
