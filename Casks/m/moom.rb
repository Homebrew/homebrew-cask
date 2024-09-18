cask "moom" do
  version "4.1.2"
  sha256 "729ff4bdb38ee891bcaf336110762dac70aef69b8b4c55e725115339dadcb0c0"

  url "https://manytricks.com/download/_do_not_hotlink_/moom#{version.no_dots}.dmg"
  name "Moom"
  desc "Utility to move and zoom windows—on one display"
  homepage "https://manytricks.com/moom/"

  # Upstream has published releases where the version in the filename differs
  # from the Sparkle shortVersion (e.g. moom400.dmg for 4.0), so we have to
  # account for this mismatch.
  livecheck do
    url "https://manytricks.com/moom/appcast/"
    regex(/moom[._-]?v?(\d+(?:\.\d+)*)\.dmg/i)
    strategy :sparkle do |item, regex|
      dotless_short_version = DSL::Version.new(item.short_version).no_dots
      next if dotless_short_version.blank?

      file_version = item.url[regex, 1]&.tr(".", "")
      next if file_version.blank?

      if dotless_short_version == file_version
        item.short_version
      elsif dotless_short_version.length < file_version.length
        # Naively add extra digits from the dotless file version to the end of
        # the shortVersion
        "#{item.short_version}.#{file_version.delete_prefix(dotless_short_version)}"
      else
        # TODO: Account for a filename version with fewer digits than the
        # shortVersion if/when necessary in the future
        next
      end
    end
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Moom.app"

  zap trash: [
    "~/Library/Application Support/Many Tricks",
    "~/Library/Preferences/com.manytricks.Moom.plist",
  ]
end
