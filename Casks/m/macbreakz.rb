cask "macbreakz" do
  version "5.48"
  sha256 "711867e43d35f513d8ad95f3ad8cef4a053b93eff78ed835e71522b772c6a82e"

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
