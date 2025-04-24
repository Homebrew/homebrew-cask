cask "discord@ptb" do
  version "0.0.169"
  sha256 "ee31cf6fe009603a2eb4557d10f723ed998f704ea9dc7d65d02d57474b2c28c2"

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
