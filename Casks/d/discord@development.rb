cask "discord@development" do
  version "1.0.972"
  sha256 "4c69cacbef23a549ff11c511735bb393cdff859f739de9a427eb86fddd400bbd"

  url "https://dl-development.discordapp.net/apps/osx/#{version}/DiscordDevelopment.dmg",
      verified: "dl-development.discordapp.net/"
  name "Discord Development"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/development?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Discord Development.app"

  zap trash: [
    "~/Library/Application Support/discorddevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment",
    "~/Library/Caches/com.hnc.DiscordDevelopment.ShipIt",
    "~/Library/Cookies/com.hnc.DiscordDevelopment.binarycookies",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.helper.plist",
    "~/Library/Preferences/com.hnc.DiscordDevelopment.plist",
    "~/Library/Saved Application State/com.hnc.DiscordDevelopment.savedState",
  ]
end
