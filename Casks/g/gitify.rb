cask "gitify" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "8.3.0"
  sha256 arm:          "e6d6dd6cdbf09050a414e108658b067cdf42dfacaad774d9625599fb03e8aead",
         intel:        "e6d6dd6cdbf09050a414e108658b067cdf42dfacaad774d9625599fb03e8aead",
         x86_64_linux: "2429a74beca7f836b54efe080696e9f941a4d594ea0f4463ac41dd7a4e83a390"

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
