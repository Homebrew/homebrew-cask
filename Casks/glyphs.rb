cask "glyphs" do
  version "2.6.6,1346"
  sha256 "f46b8d774dafc6c5c622cd7c60523b3ec0672c4b8d63785ad1431e001f334bcf"

  url "https://updates.glyphsapp.com/Glyphs#{version.major_minor_patch}-#{version.after_comma}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml"
  name "Glyphs"
  desc "Font Editor"
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
