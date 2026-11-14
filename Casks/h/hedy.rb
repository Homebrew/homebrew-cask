cask "hedy" do
  version "3.16.0,439"
  sha256 "4a025dfaa608eefa46d1a94c18d4a5208bb1e875bb1e4f965fe96f43b19c3632"

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
