cask "hedy" do
  version "3.12.1,420"
  sha256 "47c33ec1fc539c059b30d4d9f669d000a84378c80cd5805b15de1933d4413a26"

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
