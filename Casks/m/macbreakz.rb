cask "macbreakz" do
  version "5.46"
  sha256 "99dd94c7708ff627ce9fe67b39cab8b85ba7df3021aafa7a24c30c873a38eb42"

  url "https://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  name "MacBreakZ"
  desc "Ergonomic Assistant to prevent health problems"
  homepage "https://www.publicspace.net/MacBreakZ/"

  livecheck do
    url "https://www.publicspace.net/app/signed_mb#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true

  app "MacBreakZ #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/net.publicspace.mb#{version.major}.sfl*",
    "~/Library/Caches/com.apple.helpd/Generated/MacBreakZ Help*#{version}",
    "~/Library/Preferences/net.publicspace.mb#{version.major}.plist",
  ]
end
