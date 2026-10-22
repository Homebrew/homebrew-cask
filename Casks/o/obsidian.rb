cask "obsidian" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.14.5"
  sha256 arm:          "be79e6410d80fa705218aa4e8cb24ce8418cf16e13be4036227a5659b1f6aab2",
         intel:        "be79e6410d80fa705218aa4e8cb24ce8418cf16e13be4036227a5659b1f6aab2",
         arm64_linux:  "378d88c6c01c26783d3565c4b7a8de865e163e67c8ffb447ae06675d52623665",
         x86_64_linux: "306815f60d15dea8610d72886ef5e50ef4b7e7185e952ffc3bb21bee1582d952"

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
