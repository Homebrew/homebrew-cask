cask "heroic" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macOS", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.22.4"
  sha256 arm:          "29d5476a4bf1aea4dd3c907253a49ba3272223b420c5bac8c72995b36b57cd89",
         intel:        "20f99a94ae49068c9a79f3f2ee79932fcf1d0bdc903e19e9a5a09d1683733c08",
         x86_64_linux: "1664fc3c8e746325f049273272a0eae5a7f653bd3eb4534c2e2a26ef90086e99"

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
