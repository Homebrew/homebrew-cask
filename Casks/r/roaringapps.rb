cask "roaringapps" do
  version "1.8.0"
  sha256 "ff6134fd5ba5d55ebacb48e8bc8d56ce8da299c0e55ad1a0611bbf9b390878d7"

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
