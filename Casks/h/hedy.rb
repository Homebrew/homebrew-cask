cask "hedy" do
  version "3.7.0"
  sha256 "a2a5099d0defc29ad24fd08396110185f2d7ab6927459c452cb552dfdb4c9c56"

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
