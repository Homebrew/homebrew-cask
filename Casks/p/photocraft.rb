cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.18.0"
  sha256 arm:          "20335daabedacfed91fa579e77a2ac18d261a735057782b87492827876cb0f91",
         intel:        "20335daabedacfed91fa579e77a2ac18d261a735057782b87492827876cb0f91",
         arm64_linux:  "ce3002bb8c5e6b783ac6a2d9c1cd033e08fb9ad5e7d75cd3da4d0c9bedbdc5ff",
         x86_64_linux: "830757acae87b5dea20f25200392de118a143a35dc1b52041a3526120267e684"

  on_macos do
    app "PhotoCraft.app"

    zap trash: [
      "~/Library/Application Support/Photocraft",
      "~/Library/Preferences/ai.storyteller.photocraft.plist",
    ]
  end
  on_linux do
    app_image "photocraft-#{version}-linux-#{arch}.AppImage", target: "PhotoCraft.AppImage"
  end

  url "https://github.com/storytold/photocraft/releases/download/v#{version}/photocraft-#{version}-#{url_end}"
  name "PhotoCraft"
  desc "Image editor"
  homepage "https://getartcraft.com/apps/photocraft"
end
