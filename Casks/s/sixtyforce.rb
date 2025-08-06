cask "sixtyforce" do
  version "2.0.2"
  sha256 "c83a2b3a194e5c62647b2be503ea331cf9e4a29baa5d5626fd63f1f9c7a7eab4"

  url "https://sixtyforce.com/download/sixtyforce_#{version.no_dots}.zip"
  name "sixtyforce"
  desc "N64 emulator"
  homepage "https://sixtyforce.com/"

  livecheck do
    url "https://sixtyforce.com/download/"
    regex(/>\s*sixtyforce\s*v?(\d+(?:\.\d+)*)\.zip/i)
  end

  app "sixtyforce.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.gerrit.sixtyforce.sfl*",
    "~/Library/Application Support/sixtyforce",
    "~/Library/Caches/com.Gerrit.sixtyforce",
    "~/Library/Preferences/com.Gerrit.sixtyforce.plist",
  ]

  caveats do
    requires_rosetta
  end
end
