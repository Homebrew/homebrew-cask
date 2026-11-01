cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "2.0.3"
  sha256 arm:          "ad1bca019adabf0ab6ae22ea8d3c976d2d2078498f60bcf58e0f3778896dd6ac",
         intel:        "1a3e872a690bd262b9385878a9fbf1348aacae3b3ca3b45fe4b3e0ea1fe4d77f",
         x86_64_linux: "5aacaac1d0c123055bb2145b8cabf3b2a7d86e45c6c2a44ddfab5bcd63f806d4"

  on_macos do
    depends_on macos: :ventura

    app "Superset.app"

    uninstall quit: "com.superset.desktop"

    zap trash: [
          "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.superset.desktop.sfl*",
          "~/Library/Application Support/Superset",
          "~/Library/Caches/com.superset.desktop",
          "~/Library/HTTPStorages/com.superset.desktop",
          "~/Library/Logs/Superset",
          "~/Library/Preferences/com.superset.desktop.plist",
          "~/Library/Saved Application State/com.superset.desktop.savedState",
        ],
        rmdir: "~/.superset"
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "superset-#{version}-x86_64.AppImage", target: "Superset.AppImage"
  end

  url "https://github.com/ParadevAI/Paradev/releases/download/desktop-v#{version}/#{os}-#{version}#{arch}#{url_end}"
  name "Paradev"
  name "Superset"
  desc "Workspace for running coding agents in parallel"
  homepage "https://paradev.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
