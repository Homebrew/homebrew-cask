cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.17.0"
  sha256 arm:          "3a5bc2804fb5c256f409c089a58c6cab48a03f1a7ea8f036491fc0501c2a8331",
         intel:        "3a5bc2804fb5c256f409c089a58c6cab48a03f1a7ea8f036491fc0501c2a8331",
         arm64_linux:  "e497e42f8ee8d5baea2c871cb9fbce1278df806ef09a854a3a1045ec8421f2a9",
         x86_64_linux: "1dd467ef0946b152a05e5a6f17e41d191ff00ab61f8fcfc6e160e764da12f07c"

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
