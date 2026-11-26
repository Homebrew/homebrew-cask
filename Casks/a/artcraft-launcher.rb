cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.20.3"
  sha256 arm:          "eaf4f1eb46d2a2c6c9218e46d3ea2f9e940bc8409d36a492e5049430acfde3ae",
         intel:        "eaf4f1eb46d2a2c6c9218e46d3ea2f9e940bc8409d36a492e5049430acfde3ae",
         arm64_linux:  "4419989ce9476ad0e384c596007cf4742865c0df153b47513b04cee2ba26cf0e",
         x86_64_linux: "c4a7242fc3edbe17a8f7c598473dc25ef3c8468377f30d901397d1ac6b78095e"

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
