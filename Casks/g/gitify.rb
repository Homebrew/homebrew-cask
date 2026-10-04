cask "gitify" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "7.9.0"
  sha256 arm:          "486d0a3e798425e417ff458bc612b4bbb2518eb7cd833d77f727726acf2a6372",
         intel:        "486d0a3e798425e417ff458bc612b4bbb2518eb7cd833d77f727726acf2a6372",
         x86_64_linux: "7c8f65967b0575c101da070b2cb67598a68be78e0ef41cf7d721c4c8aa57215f"

  on_macos do
    depends_on macos: :ventura

    app "Gitify.app"

    uninstall quit: [
      "com.electron.gitify",
      "com.electron.gitify.helper",
    ]

    zap trash: [
      "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.electron.gitify.sfl*",
      "~/Library/Application Support/gitify",
      "~/Library/Caches/com.electron.gitify*",
      "~/Library/Caches/gitify-updater",
      "~/Library/HTTPStorages/com.electron.gitify",
      "~/Library/Logs/gitify",
      "~/Library/Preferences/com.electron.gitify*.plist",
      "~/Library/Saved Application State/com.electron.gitify.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Gitify-#{version}.AppImage", target: "Gitify.AppImage"

    zap trash: "~/.config/gitify"
  end

  url "https://github.com/gitify-app/gitify/releases/download/v#{version}/Gitify-#{version}#{os}"
  name "Gitify"
  desc "GitHub notifications on your menu bar"
  homepage "https://github.com/gitify-app/gitify"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
