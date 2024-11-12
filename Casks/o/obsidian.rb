cask "obsidian" do
  version "1.7.6"
  sha256 "2bb34b15bb1354d347d951172e204cd4a686ddf116c1a524bf1621defb4a1af7"

  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}.dmg",
      verified: "github.com/obsidianmd/"
  name "Obsidian"
  desc "Knowledge base that works on top of a local folder of plain text Markdown files"
  homepage "https://obsidian.md/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Obsidian.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/md.obsidian.sfl*",
    "~/Library/Application Support/obsidian",
    "~/Library/Preferences/md.obsidian.plist",
    "~/Library/Saved Application State/md.obsidian.savedState",
  ]
end
