cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.1"
  sha256 arm:          "a0ba6ce95a20edf7672672376cb2c0e547d34b1a8677c7a5206cfdf7ef03ff63",
         intel:        "a0ba6ce95a20edf7672672376cb2c0e547d34b1a8677c7a5206cfdf7ef03ff63",
         arm64_linux:  "73bb14822797a16b9c5b0a0ba96a6a71081d556abfae86ec860b3520ba7147ea",
         x86_64_linux: "212d4856843dc50c27002dd8816fd700d5b8b8f616a6c5705a573bceb9d96a53"

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

    zap trash: [
          "~/.cache/artcraft-launcher",
          "~/.local/share/artcraft-launcher",
          "~/.local/share/ArtCraft/versions",
        ],
        rmdir: "~/.local/share/ArtCraft"
  end

  url "https://github.com/storytold/craft-launcher/releases/download/v#{version}/artcraft-launcher-#{version}-#{platform_suffix}"
  name "ArtCraft Launcher"
  desc "Installer and updater for the Craft App Suite"
  homepage "https://github.com/storytold/craft-launcher"

  auto_updates true
end
