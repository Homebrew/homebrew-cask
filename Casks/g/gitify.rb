cask "gitify" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "7.10.0"
  sha256 arm:          "ce909dbe60efcfa26ec893ac78976e06df25de24e13794c4b388e5e13f9adf7f",
         intel:        "ce909dbe60efcfa26ec893ac78976e06df25de24e13794c4b388e5e13f9adf7f",
         x86_64_linux: "3dd984d48e9835166099b164c4d7a5d3a0610356b655fe254d7a52bd791067ff"

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
  desc "Git notifications for GitHub, GitLab, Gitea and Bitbucket"
  homepage "https://github.com/gitify-app/gitify"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
