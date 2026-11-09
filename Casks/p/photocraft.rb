cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.22.0"
  sha256 arm:          "027596dcb13db0c0d749315c052493bf587886e9d081afa57cbc6575a4cde6e9",
         intel:        "027596dcb13db0c0d749315c052493bf587886e9d081afa57cbc6575a4cde6e9",
         arm64_linux:  "8972885159ee575507e02d7c3d784ba2a6598a3ed20469d72586c8b9a69d6663",
         x86_64_linux: "cee934e6c38c0ff7f8cd7ee03694128be05be137fc4301180e2f716e7d2a1f9f"

  on_macos do
    app "PhotoCraft.app"

    zap trash: [
      "~/Library/Application Support/Photocraft",
      "~/Library/Preferences/ai.storyteller.photocraft.plist",
    ]
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"

    zap trash: [
      "~/.config/photocraft",
      "~/.local/share/icons/hicolor/*/apps/ai.storyteller.photocraft.*",
    ]
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
