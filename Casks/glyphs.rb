cask "glyphs" do
  version "3.0.2,3041"
  sha256 "cee8996a6ec18ce0ed68fc374ae3ea8d1ded22f6a300289c281762ffbeb562c6"

  url "https://updates.glyphsapp.com/Glyphs#{version.before_comma}-#{version.after_comma}.zip"
  appcast "https://updates.glyphsapp.com/appcast#{version.major}.xml"
  name "Glyphs"
  desc "Font Editor"
  homepage "https://glyphsapp.com/"

  auto_updates true

  app "Glyphs #{version.major}.app"

  zap trash: [
    "~/Library/Application Support/Glyphs",
    "~/Library/Application Support/com.GeorgSeifert.Glyphs3",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.georgseifert.glyphs3.sfl*",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.GeorgSeifert.Glyphs3.help*",
    "~/Library/Preferences/com.GeorgSeifert.Glyphs3.plist",
  ]
end
