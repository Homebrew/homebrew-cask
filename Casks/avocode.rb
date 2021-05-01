cask "avocode" do
  version "4.13.2"
  sha256 "b833ba3a012ce4ecd1491d51e0e01996765b3aeb26395a324f161a8b90d220fa"

  url "https://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  name "Avocode"
  homepage "https://avocode.com/"

  livecheck do
    url "https://manager.avocode.com/download/avocode-app/mac-dmg/"
    strategy :header_match
  end

  auto_updates true

  app "Avocode.app"

  zap trash: [
    "~/.avocode",
    "~/Library/Application Support/Avocode",
    "~/Library/Caches/com.madebysource.avocode",
    "~/Library/Caches/com.madebysource.avocode.ShipIt",
    "~/Library/Preferences/com.madebysource.avocode.helper.plist",
    "~/Library/Preferences/com.madebysource.avocode.plist",
    "~/Library/Saved Application State/com.madebysource.avocode.savedState",
  ]
end
