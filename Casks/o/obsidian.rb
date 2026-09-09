cask "obsidian" do
  arch arm: on_system_conditional(linux: "-arm64")
  os macos: "dmg", linux: "AppImage"

  version "1.13.7"
  sha256 arm:          "05daa54f5e1a4458f75da29f8faaa17e8e37ae16998432537f674c626db99bce",
         intel:        "05daa54f5e1a4458f75da29f8faaa17e8e37ae16998432537f674c626db99bce",
         arm64_linux:  "e286fd2bb2a5d346a35a577bd764c73fd5537dddec2b99a1a3e5e35974085203",
         x86_64_linux: "e0d8e0a611624de8c9c7dcd8a9e648279fb0a0d552faa1312b7e4f3a5fa72663"

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
