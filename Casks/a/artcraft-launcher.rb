cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.8.1"
  sha256 arm:          "519d2eb1481eac501f34e56e5d70194e2752ec745bd1e96a0c2e43d963be9e09",
         intel:        "519d2eb1481eac501f34e56e5d70194e2752ec745bd1e96a0c2e43d963be9e09",
         arm64_linux:  "7163faf4c5394843a8c77ec9e688c8cba35eab4a0aa4535f37b02dd14819dae6",
         x86_64_linux: "83cdba12e4f9be2d7556ed53aecb927e0d9b8a30fbceb36a2c8b768d65b4fd83"

  on_macos do
    app "ArtCraft Launcher.app"

    uninstall quit: "ai.storyteller.artcraft-launcher"

    zap trash: [
      "~/Library/Application Support/ai.storyteller.artcraft-launcher",
      "~/Library/Application Support/ArtCraft Launcher",
      "~/Library/Caches/ArtCraft Launcher",
    ]
  end
  on_linux do
    app_image "artcraft-launcher-#{version}-linux-#{arch}.AppImage", target: "artcraft-launcher.AppImage"
  end

  url "https://github.com/storytold/craft-launcher/releases/download/v#{version}/artcraft-launcher-#{version}-#{platform_suffix}"
  name "ArtCraft Launcher"
  desc "Installer and updater for the Craft App Suite"
  homepage "https://github.com/storytold/craft-launcher"

  auto_updates true
end
