cask "discord@ptb" do
  version "0.0.148"
  sha256 "616eb0822a65b7eb9ee7d8b9fb6029e6d5401213b5c6078ff2354e7df9125a3e"

  url "https://dl-ptb.discordapp.net/apps/osx/#{version}/DiscordPTB.dmg",
      verified: "dl-ptb.discordapp.net/apps/osx/"
  name "Discord PTB"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/ptb?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Discord PTB.app"

  zap trash: [
    "~/Library/Application Support/com.hnc.DiscordPTB.ShipIt",
    "~/Library/Application Support/discordptb",
    "~/Library/Caches/com.hnc.DiscordPTB",
    "~/Library/Preferences/com.hnc.DiscordPTB.plist",
    "~/Library/Saved Application State/com.hnc.DiscordPTB.savedState",
  ]
end
