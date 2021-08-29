cask "resolutionator" do
  version "2.1.0,118"
  sha256 "3318c5754f935b3e052ff5c20ef33d90896b14149c367404b89bcd9e26810645"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.before_comma.no_dots}.dmg"
  name "Resolutionator"
  desc "Use any of your display's available resolutions"
  homepage "https://manytricks.com/resolutionator/"

  livecheck do
    url "https://manytricks.com/resolutionator/appcast/"
    strategy :sparkle do |feed|
      short_version = feed.short_version
      short_version += ".0" if short_version.split(".").length < 3
      "#{short_version},#{feed.version}"
    end
  end

  auto_updates true

  app "Resolutionator.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Resolutionator Help*",
    "~/Library/Preferences/com.manytricks.Resolutionator.plist",
  ]
end
