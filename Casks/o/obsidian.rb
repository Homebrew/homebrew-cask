cask "obsidian" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.15.0"
  sha256 arm:          "d3f837e6fd3efaf65fa0bec987b18296982995d4ddae3171a7f7f67e0e2b7aa8",
         intel:        "d3f837e6fd3efaf65fa0bec987b18296982995d4ddae3171a7f7f67e0e2b7aa8",
         arm64_linux:  "fb350986a6083f1a26330c297ba2bef8191d60f00f982d4b420c821aceaf04f5",
         x86_64_linux: "1dd8cfb593deaa644101bdb4df65b159ed7985993b6572dd25fd1363459e91cc"

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

    zap trash: "~/.config/obsidian"
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
