cask "almighty" do
  version "2.13.2"
  sha256 "c3077fc07c2b4e4fe97a6b6fd576252d465fe4a2c97bde4ac63c29ed97163152"

  url "https://github.com/IndieGoodies/Almighty/releases/download/#{version}/Almighty.zip",
      verified: "github.com/IndieGoodies/Almighty/"
  name "Almighty"
  desc "Settings and tweaks configurator"
  homepage "https://indiegoodies.com/almighty"

  livecheck do
    url "https://raw.githubusercontent.com/onmyway133/archives/master/AlmightyCast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Almighty.app"

  zap trash: [
    "~/Library/Application Support/Almighty",
    "~/Library/Application Support/com.onmyway133.Almighty",
    "~/Library/Caches/com.onmyway133.Almighty",
    "~/Library/Preferences/com.onmyway133.Almighty.plist",
    "~/Library/Saved Application State/com.onmyway133.Almighty.savedState",
  ]
end
