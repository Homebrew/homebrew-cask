cask "hedy" do
  version "2.13.2"
  sha256 "a1789873ef6106022a3fc0bdfed447fb5abc947ba1e189bcc57294dc17758dc9"

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
