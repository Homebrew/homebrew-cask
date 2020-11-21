cask "glyphs" do
  version "3.0.1,3033"
  sha256 "a1b15e588d65f5d3b7cc8d838af77b32636ab3b9bb9ca43ba7f161227fdeeacd"

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
