cask "artcraft-launcher" do
  arch arm: "aarch64", intel: "x86_64"
  platform_suffix = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.14.1"
  sha256 arm:          "d98ceacdce44383bca7412c0b46dfe018f8eb6e8beb8bc58895f13812df150b0",
         intel:        "d98ceacdce44383bca7412c0b46dfe018f8eb6e8beb8bc58895f13812df150b0",
         arm64_linux:  "15d544b667e370bb025ccc7bed27820dad86ddcf9fd239ea434ff47be8243e4b",
         x86_64_linux: "42c1ce85643919bc87daa3e2441d03b90f004a1682a35f25b95cbb98e5f075db"

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
