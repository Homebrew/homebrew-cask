cask "hedy" do
  version "3.15.0,436"
  sha256 "06312603f61bf42953dad83c6115582e8e51e0b25be41d7edb608e3680dff4f5"

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
