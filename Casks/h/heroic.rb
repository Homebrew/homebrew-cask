cask "heroic" do
  arch arm: "arm64", intel: on_system_conditional(macos: "x64", linux: "x86_64")
  os macos: "macOS", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "2.22.2"
  sha256 arm:          "6db351b1ca73bc69fc4a3f0c6a26a98100d1f7659ae552b7d99b64c800ef2b97",
         intel:        "623af9080a705c2865ec25c339116b0c3bfbed20db0698bdf5ebbd4b515f0748",
         x86_64_linux: "6bb11564a9f05096826f603b56dc746ae5a1cd4a9ff8647c9d9db410c5014402"

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
