cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.33.0"
  sha256 arm:          "d00238e57d62e722dc680ecd6595bd9ba1c8fadaa196cf304c43ecea59939824",
         intel:        "d5bc16caf8d7133c964ad39c65790d32c5e2e6ee40c9bf631e22f77bcba6de9d",
         x86_64_linux: "f8d506fab76d80a832e1f23cb9f1141d04a6c1898ef16f202192d928d6fee183"

  on_macos do
    depends_on macos: :monterey

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
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "superset-#{version}-x86_64.AppImage", target: "Superset.AppImage"
  end

  url "https://github.com/superset-sh/superset/releases/download/desktop-v#{version}/#{os}-#{version}#{arch}#{url_end}"
  name "Superset"
  desc "Terminal for orchestrating agents"
  homepage "https://superset.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end
end
