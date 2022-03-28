cask "roaringapps" do
  version "1.5.0"
  sha256 "bf9190c0674ac3a4e5cd35520988e485d96da4c3cfc5e248cd129cb765000a45"

  url "https://s3.amazonaws.com/s3.roaringapps.com/downloads/RoaringApps-#{version}.zip",
      verified: "s3.amazonaws.com/s3.roaringapps.com/"
  name "RoaringApps"
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
