cask "plistedit-pro" do
  version "1.9.7"
  sha256 "a38b2336dfd4fd65a4243b32b29975419ade9b0b7d161ca49147a00508e9e6ce"

  url "https://www.fatcatsoftware.com/plisteditpro/downloads/PlistEditPro_#{version.no_dots}.zip"
  name "PlistEdit Pro"
  desc "Property list and JSON editor"
  homepage "https://www.fatcatsoftware.com/plisteditpro/"

  # The Sparkle feed can contain items on the "beta" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://www.fatcatsoftware.com/plisteditpro/downloads/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "PlistEdit Pro.app"
  binary "#{appdir}/PlistEdit Pro.app/Contents/MacOS/pledit"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.fatcatsoftware.pledpro.sfl*",
    "~/Library/Application Support/com.fatcatsoftware.pledpro",
    "~/Library/Application Support/PlistEdit Pro",
    "~/Library/Caches/com.apple.helpd/Generated/com.fatcatsoftware.pledpro.help*",
    "~/Library/Caches/com.fatcatsoftware.pledpro",
    "~/Library/Preferences/com.fatcatsoftware.pledpro.plist",
  ]
end
