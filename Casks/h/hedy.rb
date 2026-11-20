cask "hedy" do
  version "3.17.0,442"
  sha256 "37a5e39dde1277a3d2f4c4136d02f107bb3c58f4fb95d2dea0908f15cbdacbcc"

  url "https://dl.hedy.ai/Hedy-MacOS-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Hedy AI"
  desc "AI-powered meeting coach"
  homepage "https://hedy.ai/"

  # The CDN caches each encoding separately and its gzip copy of the appcast
  # isn't refreshed on release. macOS's curl only accepts gzip or deflate, so
  # request the uncompressed copy instead.
  livecheck do
    url "https://macos-update-xml.hedy.bot",
        header: "Accept-Encoding: identity"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Hedy.app"

  uninstall quit: "bot.hedy.mobile"

  zap trash: [
    "~/Library/Application Scripts/bot.hedy.mobile",
    "~/Library/Application Scripts/group.bot.hedy",
    "~/Library/Containers/bot.hedy.mobile",
    "~/Library/Group Containers/group.bot.hedy",
  ]
end
