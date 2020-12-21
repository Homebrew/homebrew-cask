cask "obsidian" do
  version "0.10.1"
  sha256 "8f7a710443f4f8bbff8ec45349aababcde057015d3bba5660bc510a51499d1dc"

  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}.dmg",
      verified: "github.com/obsidianmd/"
  appcast "https://github.com/obsidianmd/obsidian-releases/releases.atom"
  name "Obsidian"
  desc "Knowledge base that works on top of a local folder of plain text Markdown files"
  homepage "https://obsidian.md/"

  app "Obsidian.app"

  zap trash: [
    "~/Library/Application Support/obsidian",
    "~/Library/Preferences/md.obsidian.plist",
    "~/Library/Saved Application State/md.obsidian.savedState",
  ]
end
