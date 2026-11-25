cask "discord@ptb" do
  version "0.0.273"
  sha256 "e4096b0ce69087895e8a3353b998c26a474f884a6cc4b2e972fcca7838163e02"

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
