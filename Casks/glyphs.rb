cask "glyphs" do
  version "3.2,3181"
  sha256 "3762e666b6233620776958dd260128332a4dad20d62e154c95e994e0889c9c75"

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
