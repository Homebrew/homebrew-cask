cask "menuwhere" do
  version "2.3.0"
  sha256 "26018be00b8d097e24c397c2f93996af47353dd1c8e54c7fcf28067fadd0dd3b"

  url "https://manytricks.com/download/_do_not_hotlink_/menuwhere#{version.no_dots}.dmg"
  name "Menuwhere"
  desc "Access the menu from anywhere"
  homepage "https://manytricks.com/menuwhere/"

  # The dotless version in the file name uses major/minor/patch but the appcast
  # `shortVersionString` may omit patch for new major/minor versions (e.g.
  # 230 and 2.3 respectively). This adds `.0` to versions without a patch to
  # avoid this mismatch.
  livecheck do
    url "https://manytricks.com/menuwhere/appcast/"
    regex(/^v?(\d+\.\d+)(\.\d+)*$/i)
    strategy :sparkle do |item, regex|
      match = item.short_version&.match(regex)
      next unless match

      "#{match[1]}#{match[2].presence || ".0"}"
    end
  end

  auto_updates true

  app "Menuwhere.app"

  uninstall quit: "com.manytricks.Menuwhere"

  zap trash: [
    "~/Library/Caches/com.manytricks.Menuwhere",
    "~/Library/HTTPStorages/com.manytricks.Menuwhere",
    "~/Library/Preferences/com.manytricks.Menuwhere.plist",
  ]
end
