cask "plistedit-pro" do
  version "1.10.0"
  sha256 "0ad2f7a4066945b5a67db0667e946748cc4f33858f786554779c54f1a6608c4e"

  url "https://www.fatcatsoftware.com/plisteditpro/downloads/PlistEditPro_#{version.no_dots}.zip"
  name "PlistEdit Pro"
  desc "Property list and JSON editor"
  homepage "https://www.fatcatsoftware.com/plisteditpro/"

  # The Sparkle feed can contain items on the "beta" channel, so we restrict
  # matching to the default channel.
  livecheck do
    url "https://www.fatcatsoftware.com/plisteditpro/downloads/appcast.xml"
    strategy :sparkle do |items|
      newest_item = items.find { |item| item.channel.nil? }&.short_version
      match = newest_item&.match(/v?(\d+\.\d+)((?:\.\d+)*)/i)
      next if match.blank?

      # The dotless version in the file name uses major/minor/patch but the
      # appcast `shortVersionString` may omit patch for new major/minor
      # versions (e.g. 1100 and 1.10 respectively). This adds `.0` to versions
      # without a patch to avoid this mismatch.
      "#{match[1]}#{match[2].presence || ".0"}"
    end
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

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
