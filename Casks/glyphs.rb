cask "glyphs" do
  version "3.0.3,3061"
  sha256 "ce9cbef777945a3056b6d5a65624174369db78d103a884b5856df2cd11c6d655"

  url "https://updates.glyphsapp.com/Glyphs#{version.before_comma}-#{version.after_comma}.zip"
  name "Glyphs"
  desc "Font Editor"
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
