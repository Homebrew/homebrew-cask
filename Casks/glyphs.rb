cask "glyphs" do
  version "3.0.3,3091"
  sha256 "e069c63852a7105edcaacccf0ba75b503cc12b53a7b5f1eb82a949157e72bda3"

  url "https://updates.glyphsapp.com/Glyphs#{version.before_comma}-#{version.after_comma}.zip"
  name "Glyphs"
  desc "Font editor"
  homepage "https://glyphsapp.com/"

  livecheck do
    url "https://updates.glyphsapp.com/appcast#{version.major}.xml"
    strategy :sparkle
  end

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
