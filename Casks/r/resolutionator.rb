cask "resolutionator" do
  version "2.4"
  sha256 "e9fb9b1946deddc62ff0bf5d46066a8cc91564c358e5d33bf85029f4ef75d5bb"

  url "https://manytricks.com/download/_do_not_hotlink_/resolutionator#{version.no_dots.ljust(3, "0")}.dmg"
  name "Resolutionator"
  desc "Use any of your display's available resolutions"
  homepage "https://manytricks.com/resolutionator/"

  livecheck do
    url "https://manytricks.com/resolutionator/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Resolutionator.app"

  zap trash: [
    "~/Library/Caches/com.apple.helpd/Generated/Resolutionator Help*",
    "~/Library/Preferences/com.manytricks.Resolutionator.plist",
  ]
end
