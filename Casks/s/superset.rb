cask "superset" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.11"
  sha256 arm:          "1a24832fb56575552291ffb960455f8d00a77b0a33b5abc8f95753307a578d42",
         intel:        "932460324a78c2c299cd74bd7bc96fbf80715497cfeff732a2996b3537f862c2",
         x86_64_linux: "85aa939d521d14105cb85029fd4ab5a40b9ec5111ce4226532f44ee01fae0762"

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

    app_image "Superset-x86_64.AppImage", target: "Superset.AppImage"

    zap trash: [
          "~/.cache/@supersetdesktop-updater",
          "~/.config/Superset",
        ],
        rmdir: "~/.superset"
  end

  url "https://github.com/ParadevAI/Paradev/releases/download/desktop-v#{version}/Superset-#{arch}.#{os}"
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
