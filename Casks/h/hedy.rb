cask "hedy" do
  version "3.8.0"
  sha256 "66312c37f8d497e48d689024a027bb31584e18f67bec1462a16bd842e0c51fb4"

  url "https://dl.hedy.ai/Hedy-MacOS-#{version}.dmg"
  name "Hedy AI"
  desc "AI-powered meeting coach"
  homepage "https://hedy.ai/"

  livecheck do
    url "https://macos-update-xml.hedy.bot"
    strategy :sparkle, &:short_version
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
