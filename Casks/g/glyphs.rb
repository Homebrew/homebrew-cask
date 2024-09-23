cask "glyphs" do
  version "3.3,3321"
  sha256 "5f0b59798a5731059171498da26d2ce168d66f4a2fb8d8df3592ec37370c608a"

  url "https://updates.glyphsapp.com/Glyphs#{version.csv.first}-#{version.csv.second}.zip"
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
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.georgseifert.glyphs#{version.major}.sfl*",
    "~/Library/Application Support/com.GeorgSeifert.Glyphs#{version.major}",
    "~/Library/Application Support/Glyphs",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.GeorgSeifert.Glyphs#{version.major}.help*",
    "~/Library/Preferences/com.GeorgSeifert.Glyphs#{version.major}.plist",
  ]
end
