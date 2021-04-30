cask "lyn" do
  version "2.0.8"
  sha256 "4dc88a17e3169b35f748283761ee05a3915b49c4642ac9141858817e5fe87f26"

  url "https://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  name "Lyn"
  homepage "https://www.lynapp.com/"

  livecheck do
    url "https://www.lynapp.com/lyn/update#{version.major}x.xml"
    strategy :sparkle
  end

  app "Lyn.app"

  zap trash: [
    "~/Library/Application Support/Lyn",
    "~/Library/Caches/com.lynapp.lyn",
    "~/Library/Preferences/com.lynapp.lyn.plist",
  ]
end
