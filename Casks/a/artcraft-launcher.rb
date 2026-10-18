cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.5.1"
  sha256 arm:          "84f7b95acc229d9a997f91c3d110cd36131edde21f47f4a21c0f17d2ad3ca436",
         intel:        "84f7b95acc229d9a997f91c3d110cd36131edde21f47f4a21c0f17d2ad3ca436",
         arm64_linux:  "45d95fbd14eb3462d1a20cc9b99e0da1ffb33951fea56844584bb79c588278d2",
         x86_64_linux: "d4298972955d1ed6c5fd7759fdd2e4dc4bc521b3d040cf7b4891b78707831f73"

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
