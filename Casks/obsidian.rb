cask "obsidian" do
  version "0.9.11"
  sha256 "a5b284b4f0056f640a9a837e0d88b231c3bd7e6f703bc54a9db969e43fcb5348"

  # github.com/obsidianmd/ was verified as official when first introduced to the cask
  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}.dmg"
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
