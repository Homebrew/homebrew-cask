cask "gitify" do
  os macos: "-universal-mac.zip", linux: ".AppImage"

  version "8.1.0"
  sha256 arm:          "2fe38650ce2e7b7d18e86cbc89d02dcbb17a2eb7015acc22ba0ab9d598d0e3d6",
         intel:        "2fe38650ce2e7b7d18e86cbc89d02dcbb17a2eb7015acc22ba0ab9d598d0e3d6",
         x86_64_linux: "f62ff2183250a54e642b50d4935ce2865c7645253b9db853313c7bc24dc88f65"

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
