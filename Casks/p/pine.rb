cask "pine" do
  version "0.1.0"
  sha256 "046f2603f7e4dcdc7535c6a5652dbfbab5cbe93fa36ca161f8a8029b53770b76"

  url "https://github.com/lukakerr/pine/releases/download/#{version}/Pine-#{version}.zip"
  name "Pine"
  desc "Native markdown editor"
  homepage "https://github.com/lukakerr/pine"

  depends_on macos: ">= :sierra"

  app "Pine.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/io.github.lukakerr.pine.sfl*",
    "~/Library/Application Support/Pine",
    "~/Library/Caches/io.github.lukakerr.Pine",
    "~/Library/Preferences/io.github.lukakerr.Pine.plist",
    "~/Library/Saved Application State/io.github.lukakerr.Pine.savedState",
    "~/Library/WebKit/io.github.lukakerr.Pine",
  ]

  caveats do
    requires_rosetta
  end
end
