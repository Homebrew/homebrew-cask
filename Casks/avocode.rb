cask "avocode" do
  version "4.14.2"
  sha256 "071607b10787f745ba3455fece69e9209c5ed353503217a9b3f585bd817922f2"

  url "https://media.avocode.com/download/avocode-app/#{version}/Avocode-#{version}-mac.zip"
  name "Avocode"
  desc "Collaborate on design files"
  homepage "https://avocode.com/"

  livecheck do
    url "https://manager.avocode.com/download/avocode-app/mac-dmg/"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
