cask "superset" do
  arch arm: "-arm64"
  os macos: "Superset", linux: "superset"
  url_end = on_system_conditional macos: ".dmg", linux: "-x86_64.AppImage"

  version "2.0.4"
  sha256 arm:          "0a35fab6981de87568354bb813571c5c794a84d4c8aae0ae1ade814317133036",
         intel:        "11d2ca1184a4aeeb7e5b91bb18cf2299e2a7dc6b5ac286d9880d288e5116c0e3",
         x86_64_linux: "ee1332e91893daf306460b79df2128611b415326ef9e4f7466c82df9d4076549"

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

    zap trash: [
          "~/.cache/@supersetdesktop-updater",
          "~/.config/Superset",
        ],
        rmdir: "~/.superset"
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
