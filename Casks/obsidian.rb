cask "obsidian" do
  version "0.8.2"
  sha256 "ba3e470e0cd370652d4e3254e8f7c405f2a90a9c474ee302f71a606e3c9d25be"

  # github.com/obsidianmd/ was verified as official when first introduced to the cask
  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}.dmg"
  appcast "https://github.com/obsidianmd/obsidian-releases/releases.atom"
  name "Obsidian"
  homepage "https://obsidian.md/"

  app "Obsidian.app"

  zap trash: [
    "~/Library/Application Support/obsidian",
    "~/Library/Preferences/md.obsidian.plist",
    "~/Library/Saved Application State/md.obsidian.savedState",
  ]
end
