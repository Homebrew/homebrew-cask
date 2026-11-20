cask "obsidian" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.15.1"
  sha256 arm:          "e05c7e3e2262b14c965bb246dcb74a30fc9098bd669e42957c4d9f788d04fdf4",
         intel:        "e05c7e3e2262b14c965bb246dcb74a30fc9098bd669e42957c4d9f788d04fdf4",
         arm64_linux:  "2a0c0cae8329c708035c8aff905ba6bdec4153be300657cccb5a94ff0bbba898",
         x86_64_linux: "515ff49bb263d08841069adc46002dae94562e5041fb7762b3a1dcb7be10a51a"

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
