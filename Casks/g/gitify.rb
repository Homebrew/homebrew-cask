cask "gitify" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "8.2.0"
  sha256 arm:          "6ff9ea3b12eb0fc886864324df551278dddfa20af564bd533ebcb07878392a24",
         intel:        "6ff9ea3b12eb0fc886864324df551278dddfa20af564bd533ebcb07878392a24",
         x86_64_linux: "0489a7a804cb5ac918f9177ff4539d9ef02bfc6c9ab230a3ecb90cf194879c7a"

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
  desc "Git notifications on your menu bar"
  homepage "https://github.com/gitify-app/gitify"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
