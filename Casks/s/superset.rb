cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "1.37.0"
  sha256 arm:          "be6cebd204c3cfc358ad95c7e506cfa32998f419a11f593ba461d8ca8c9101a7",
         intel:        "c7469ab28f0a66e2163c40c0a047d393a62fa89e96e674aa4fba05bb5bd88ae9",
         x86_64_linux: "916547f81b19c541a01f058be918e38518c743bfaf1f82c420cd4501db06c8aa"

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
