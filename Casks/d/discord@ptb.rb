cask "discord@ptb" do
  version "0.0.271"
  sha256 "b5be16e178284a015d30e234d6634e571c507246cc0cd84753ab8fd374bf6cba"

  url "https://ptb.dl2.discordapp.net/distro/app/ptb/osx/universal/#{version}/DiscordPTB.dmg"
  name "Discord PTB"
  desc "Voice and text chat software"
  homepage "https://discord.com/"

  livecheck do
    url "https://discord.com/api/download/ptb?platform=osx"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: :ventura

  app "Discord PTB.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.hnc.discordptb.sfl*",
    "~/Library/Application Support/com.hnc.DiscordPTB.ShipIt",
    "~/Library/Application Support/discordptb",
    "~/Library/Caches/com.hnc.DiscordPTB",
    "~/Library/Preferences/com.hnc.DiscordPTB.plist",
    "~/Library/Saved Application State/com.hnc.DiscordPTB.savedState",
  ]
end
