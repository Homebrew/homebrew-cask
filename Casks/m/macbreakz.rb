cask "macbreakz" do
  version "5.47"
  sha256 "6a3844c7c88e5fcc68ffa096c1f264950d5b320512c8da10112e89c1b97a118e"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  name "MacBreakZ"
  desc "Ergonomic Assistant to prevent health problems"
  homepage "https://www.publicspace.net/MacBreakZ/"

  livecheck do
    url "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MacBreakZ #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.publicspace.mb#{version.major}.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/MacBreakZ Help*#{version}",
    "~/Library/Preferences/net.publicspace.mb#{version.major}.plist",
  ]
end
