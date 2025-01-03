cask "discord@development" do
  version "0.0.70"
  sha256 "51d1f06bf00b38eb7f6cd03a52654907c18d7bec87275c45a321749d3d599f78"

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
  depends_on macos: ">= :catalina"

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
