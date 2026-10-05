cask "obsidian" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.14.4"
  sha256 arm:          "dcf818dd20ee5d9dd3e782eee0c0c4c47cc225383b051c2fc9af7d5772f59f70",
         intel:        "dcf818dd20ee5d9dd3e782eee0c0c4c47cc225383b051c2fc9af7d5772f59f70",
         arm64_linux:  "721829a4f0ffadf7674f396aed58a5699e116b76b78747873d1751193efb66a9",
         x86_64_linux: "6362ddbeeeebb7bbccb48fae009572cf2284ef92f5c919c1332aba48de6ffeaa"

  on_macos do
    depends_on macos: :monterey

    app "Obsidian.app"
    binary "#{appdir}/Obsidian.app/Contents/MacOS/obsidian-cli", target: "obsidian"

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/md.obsidian.sfl*",
      "~/Library/Application Support/obsidian",
      "~/Library/Preferences/md.obsidian.plist",
      "~/Library/Saved Application State/md.obsidian.savedState",
    ]
  end
  on_linux do
    app_image "Obsidian-#{version}#{arch}.AppImage", target: "Obsidian.AppImage"
  end

  url "https://github.com/obsidianmd/obsidian-releases/releases/download/v#{version}/Obsidian-#{version}#{arch}.#{os}"
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
end
