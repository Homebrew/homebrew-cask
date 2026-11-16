cask "glyphs" do
  version "4.2,4204"
  sha256 "11da0def5dd94cceda9adebfc88c1a014cf3e9c26a14264978157f08f1e200aa"

  url "https://updates.glyphsapp.com/Glyphs#{version.csv.first}-#{version.csv.second}.zip"
  name "Glyphs"
  desc "Font editor"
  homepage "https://glyphsapp.com/"

  livecheck do
    url "https://updates.glyphsapp.com/appcast#{version.major}.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :monterey

  app "Glyphs #{version.major}.app"

  uninstall quit: "com.GeorgSeifert.Glyphs*"

  zap trash: [
    "~/Library/Application Support/bugsnag-shared-com.GeorgSeifert.Glyphs#{version.major}",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.georgseifert.glyphs#{version.major}.sfl*",
    "~/Library/Application Support/com.GeorgSeifert.Glyphs#{version.major}",
    "~/Library/Application Support/Glyphs #{version.major}",
    "~/Library/Application Support/Glyphs",
    "~/Library/Caches/bugsnag-shared-com.GeorgSeifert.Glyphs#{version.major}",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/com.GeorgSeifert.Glyphs#{version.major}.help*",
    "~/Library/Caches/com.GeorgSeifert.Glyphs#{version.major}",
    "~/Library/HTTPStorages/com.GeorgSeifert.Glyphs#{version.major}",
    "~/Library/Preferences/com.GeorgSeifert.Glyphs#{version.major}.plist",
  ]
end
