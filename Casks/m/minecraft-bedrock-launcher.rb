cask "minecraft-bedrock-launcher" do
  version "1.4.0-511"
  sha256 "0a153f435a026b0792e938eeb057484c1315dcde8a88d474ab815e9131eefb65"

  url "https://github.com/minecraft-linux/macos-builder/releases/download/v#{version}/Minecraft_Bedrock_Launcher_v1.4.0-macOS-x86_64-0.2.511_macOS_10.13.0.dmg",
      verified: "github.com/minecraft-linux/macos-builder/"
  name "Minecraft Bedrock Launcher"
  desc "Launcher for Minecraft Bedrock Edition on macOS"
  homepage "https://github.com/minecraft-linux/macos-builder"

  livecheck do
    url "https://github.com/minecraft-linux/macos-builder/releases/latest"
    strategy :github_latest
  end

  app "Minecraft Bedrock Launcher.app"

  depends_on macos: ">= :high_sierra"

  zap trash: [
    "~/Library/Application Support/minecraft",
    "~/Library/Application Support/mcpelauncher",
    "~/Library/Preferences/io.mrarm.Minecraft Linux Launcher UI.plist",
    "~/Library/Preferences/io.mrarm.Minecraft Linux Launcher UI.helper.plist",
    "~/Library/Saved Application State/io.mrarm.Minecraft Linux Launcher UI.savedState"
  ]
end
