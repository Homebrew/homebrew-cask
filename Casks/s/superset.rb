cask "superset" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.10"
  sha256 arm:          "57f517049496686559150761aeffd440a5b4f354a4485fbfb27a87dfe99fa580",
         intel:        "2b4cba7e8bd0386262de2a5ab905eac2f11c174c247f1c18ff6267190bc113b0",
         x86_64_linux: "54cd102221ec2de3ccdde8f45376a9a8a5db9826c71eeaa9c685dc3e76ccc656"

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
