cask "obsidian" do
  version "0.15.9"
  sha256 "5694a09c18dcbe4c5e67c69720d32cf2fa6ddf8a3481a6e7e722868972a52ae1"

  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}-universal.dmg",
      verified: "github.com/obsidianmd/"
  name "Obsidian"
  desc "Knowledge base that works on top of a local folder of plain text Markdown files"
  homepage "https://obsidian.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Obsidian.app"

  zap trash: [
    "~/Library/Application Support/obsidian",
    "~/Library/Preferences/md.obsidian.plist",
    "~/Library/Saved Application State/md.obsidian.savedState",
  ]
end
