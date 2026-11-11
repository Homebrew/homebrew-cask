cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.0"
  sha256 arm:          "142aa0afd159fba13739a0c410aaca54078861f914c1880cef726e8d97c1e1c0",
         intel:        "142aa0afd159fba13739a0c410aaca54078861f914c1880cef726e8d97c1e1c0",
         arm64_linux:  "6a8b14e2aafabb52af0fbc537be63ec1853ca8819eed6984588a67a8e5c8bc87",
         x86_64_linux: "64197858d155f447ae323f905015116d848f1375675d731eb08d5708f8722e9b"

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
