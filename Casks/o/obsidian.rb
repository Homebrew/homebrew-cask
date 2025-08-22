cask "obsidian" do
  version "1.9.10"
  sha256 "b544f9d27185dabb9ae569b59eac0ee08f37bbca3e070c2b6a921bc606808b56"

  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}.dmg",
      verified: "github.com/obsidianmd/"
  name "Obsidian"
  desc "Knowledge base that works on top of a local folder of plain text Markdown files"
  homepage "https://obsidian.md/"

  livecheck do
    url "https://raw.githubusercontent.com/obsidianmd/obsidian-releases/master/desktop-releases.json"
    strategy :json do |json|
      json["latestVersion"]
    end
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
