cask "hedy" do
  version "2.11.4"
  sha256 "84ea2e6c53cde41ec3f3cb843f042ec69926ece9528dec167bdd9b194642c818"

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
