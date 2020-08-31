cask "obsidian" do
  version "0.8.9"
  sha256 "0c99fd1f51837cd66c74bfda058493cb85506caaf6c5b59535e1d4309aaf8f4f"

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
