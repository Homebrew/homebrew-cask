cask "heroic" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macOS", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.22.3"
  sha256 arm:          "23017ee6ce6e982ae2b4513656b887b693414b51e7205c8ac54b3cb52f26e019",
         intel:        "2e5b320339a76483a3cf95b478c8329f1465be51f8007915b23879976be254c1",
         x86_64_linux: "39a702abf5d3e5d31b3d0d22bf0ed5646fb99d2fe2b572976c89c8743aee78c3"

  on_macos do
    depends_on macos: :monterey

    app "Heroic.app"

    zap trash: [
      "~/Library/Application Support/heroic",
      "~/Library/Logs/Heroic Games Launcher",
      "~/Library/Logs/heroic",
      "~/Library/Preferences/com.electron.heroic.plist",
      "~/Library/Preferences/com.heroicgameslauncher.hgl.plist",
      "~/Library/Saved Application State/com.electron.heroic.savedState",
    ]
  end
  on_linux do
    depends_on arch: :x86_64

    app_image "Heroic-#{version}-linux-#{arch}.AppImage", target: "Heroic.AppImage"
  end

  url "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/download/v#{version}/Heroic-#{version}-#{os}-#{arch}.#{url_end}"
  name "Heroic Games Launcher"
  desc "Game launcher"
  homepage "https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
end
