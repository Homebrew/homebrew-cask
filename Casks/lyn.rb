cask "lyn" do
  version "2.0.11"
  sha256 "7037a3774de2a7c2edc0b7a80c9bc806a497d3129606f088803e13349713f4de"

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
