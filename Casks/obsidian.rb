cask "obsidian" do
  version "0.8.4"
  sha256 "e4874f53f8bbf937d0391525073fa2598931317bb8beb3dccdc3c8d683f704dd"

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
