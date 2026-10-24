cask "hedy" do
  version "3.14.0,434"
  sha256 "88f733a976e623298923c807a5fba67c2b38626fdb533952558e61121a63b93f"

  url "https://dl.hedy.ai/Hedy-MacOS-#{version.csv.first}-#{version.csv.second}.dmg"
  name "Hedy AI"
  desc "AI-powered meeting coach"
  homepage "https://hedy.ai/"

  livecheck do
    url "https://macos-update-xml.hedy.bot"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Hedy.app"

  uninstall quit: "bot.hedy.mobile"

  zap trash: [
    "~/Library/Application Scripts/bot.hedy.mobile",
    "~/Library/Containers/bot.hedy.mobile",
  ]
end
