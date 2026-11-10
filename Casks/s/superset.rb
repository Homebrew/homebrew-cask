cask "superset" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "dmg", linux: "AppImage"

  version "2.0.8"
  sha256 arm:          "b4c2c436433ed375bc832d4a45ecbbf5ded4960c364962e07f55d093afb338fc",
         intel:        "5560caea017032fda57b80867c8217e13978e6ccac0a0deaf99037fb54ce5d13",
         x86_64_linux: "ad4641f9eeab84534855a64f6c1935496337f1cb1295681e33caaf8681cc33ee"

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
