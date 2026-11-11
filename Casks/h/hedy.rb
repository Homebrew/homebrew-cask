cask "hedy" do
  version "3.15.1,437"
  sha256 "f9cbc13f80d45732681ed6388d19002e439f21770aab49ab7b04299aebd8c7a3"

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
