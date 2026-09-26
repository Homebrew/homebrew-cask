cask "gitify" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "7.8.0"
  sha256 arm:          "c1358151eed4666e7a1514c9bcb0f50edf66821581927fa0d373af496cc811ee",
         intel:        "c1358151eed4666e7a1514c9bcb0f50edf66821581927fa0d373af496cc811ee",
         x86_64_linux: "093eee01569a397a4f9d8e06c93d10873b98ac22dd49be36f210e03d6f5cbbe1"

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
