cask "avocode" do
  version "4.13.0"
  sha256 "f66868d7c5f57cdd564d465618587d81582e2d7d78e448c39aea401da6759ba1"

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
