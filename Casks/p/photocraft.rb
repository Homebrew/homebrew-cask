cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.20.2"
  sha256 arm:          "89f2ed4d4a737ec8aaa570165815bab0a824df3f453493b0a501f915179e9a55",
         intel:        "89f2ed4d4a737ec8aaa570165815bab0a824df3f453493b0a501f915179e9a55",
         arm64_linux:  "8f298b39a67d8fe519a99aa752da017862c8e346f3a135205478fd5db5bd703a",
         x86_64_linux: "be18d175a0a6278c30124241793bb77b357ef96046d81f1d8189e492c14bc0ae"

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
