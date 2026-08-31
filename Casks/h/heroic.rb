cask "heroic" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macOS", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.22.1"
  sha256 arm:          "4f803330ae6f0c084876589cef335ce98812b6a1598df2f170451fbf0ecb9007",
         intel:        "fbf1bf989f5f7206d3508a53779eaca28af7e51542ac761dc1b2bc13421dc310",
         x86_64_linux: "e91e3171c8cb8a57acfcfc7f665e8c74c5a80cf088d5ea61a2af5e6bcc537762"

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
