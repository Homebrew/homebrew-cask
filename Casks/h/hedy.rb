cask "hedy" do
  version "3.12.2,422"
  sha256 "9a0ffd2f38d11e90402696176a9509754227946757934397c3e5e8703e3d5149"

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
