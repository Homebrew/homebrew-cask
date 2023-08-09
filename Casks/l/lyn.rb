cask "lyn" do
  version "2.1.1"
  sha256 "62f70642e55e6c1ee7ea68c89fbe71114331861bdecfca2a5c95d30342886153"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  name "Lyn"
  desc "Media browser and viewer"
  homepage "https://www.lynapp.com/"

  livecheck do
    url "https://www.lynapp.com/lyn/update#{version.major}x.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :sierra"

  app "Lyn.app"

  zap trash: [
    "~/Library/Application Support/Lyn",
    "~/Library/Caches/com.lynapp.lyn",
    "~/Library/Preferences/com.lynapp.lyn.plist",
  ]
end
