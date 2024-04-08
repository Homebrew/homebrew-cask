cask "discord" do
  version "0.0.299"
  sha256 "0349ebf6e844c599cb08a1c1b71c548617dcec0eb68303a52bdf908b61ab4bd9"

  url "https://dl.discordapp.net/apps/osx/#{version}/Discord.dmg",
      verified: "dl.discordapp.net/"
  name "Discord"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/stable?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Discord.app"

  zap trash: [
    "~/Library/Application Support/discord",
    "~/Library/Caches/com.hnc.Discord",
    "~/Library/Caches/com.hnc.Discord.ShipIt",
    "~/Library/Cookies/com.hnc.Discord.binarycookies",
    "~/Library/Preferences/com.hnc.Discord.helper.plist",
    "~/Library/Preferences/com.hnc.Discord.plist",
    "~/Library/Saved Application State/com.hnc.Discord.savedState",
  ]
end
