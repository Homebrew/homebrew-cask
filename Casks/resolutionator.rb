cask "resolutionator" do
  version "2.2.0,122"
  sha256 "9f2fd542957f70fd45a64aca8804399b44b12d30cc58d9dabda1b8924348769c"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.csv.first.no_dots}.dmg"
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
