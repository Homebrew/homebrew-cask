cask "glyphs" do
  version "2.6.6,1344"
  sha256 "00d9e409349326afdb18099998a8c09af6dd8708c0cabc6af21ba0ecb261c371"

  url "https://updates.glyphsapp.com/Glyphs#{version.major_minor_patch}-#{version.after_comma}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml"
  name "Glyphs"
  homepage "https://glyphsapp.com/"

  auto_updates true

  app "Glyphs.app"

  zap trash: [
    "~/Library/Application Support/Glyphs",
    "~/Library/Application Support/com.GeorgSeifert.Glyphs2",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.georgseifert.glyphs2.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.GeorgSeifert.Glyphs2.help*",
    "~/Library/Preferences/com.GeorgSeifert.Glyphs2.plist",
  ]
end
