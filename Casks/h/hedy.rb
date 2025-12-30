cask "hedy" do
  version "2.13.0"
  sha256 "47616e7e7499788e65e45f4bc1b60679e50dd9599625e7a0f17dac184edb41dd"

  url "https://dl.hedy.ai/Hedy-MacOS-#{version}.dmg"
  name "Hedy AI"
  desc "AI-powered meeting coach"
  homepage "https://hedy.ai/"

  livecheck do
    url "https://macos-update-xml.hedy.bot"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Hedy.app"

  uninstall quit: "bot.hedy.mobile"

  zap trash: [
    "~/Library/Application Scripts/bot.hedy.mobile",
    "~/Library/Containers/bot.hedy.mobile",
  ]
end
