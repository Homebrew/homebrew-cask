cask "obsidian" do
  version "1.4.14"
  sha256 "0cad9b839ad1ad40b214c7312b002b2609ca3f73afa5be921e8d2fdf0caa611f"

  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}-universal.dmg",
      verified: "github.com/obsidianmd/"
  name "Obsidian"
  desc "Knowledge base that works on top of a local folder of plain text Markdown files"
  homepage "https://obsidian.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "Obsidian.app"

  zap trash: [
    "~/Library/Application Support/obsidian",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/md.obsidian.sfl2",
    "~/Library/Preferences/md.obsidian.plist",
    "~/Library/Saved Application State/md.obsidian.savedState",
  ]
end
