cask "roaringapps" do
  version "1.6.1"
  sha256 "5f6a21526f67ecd46f7f94fb51b0ba5a26eabb61e3feb3c57eca25a64cc45fb2"

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
