cask "superset" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.9"
  sha256 arm:          "dccc149198633bc9ed099ef6cd53da46336868885dbef0b574190c6de0842399",
         intel:        "76a10ff7b4778c4afb8cfa93bd53fd1145d64cb989af898a3e17b9e5ba38dcd0",
         x86_64_linux: "4f1ffd6ac01b0fa47e4d38e270d78535a60539d2e72f2544d342aa498e0e589d"

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
