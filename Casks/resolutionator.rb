cask "resolutionator" do
  version "2.3.0"
  sha256 "ab0c9ab5c7b9ebf03a478532985aab77018be7b6c71f56948014f5b2bb419862"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.no_dots}.dmg"
  name "Resolutionator"
  desc "Use any of your display's available resolutions"
  homepage "https://manytricks.com/resolutionator/"

  livecheck do
    url "https://manytricks.com/resolutionator/appcast/"
    strategy :sparkle do |item|
      (item.short_version + ".0").split(".")[0..2].join(".")
    end
  end

  auto_updates true

  app "Resolutionator.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Resolutionator Help*",
    "~/Library/Preferences/com.manytricks.Resolutionator.plist",
  ]
end
