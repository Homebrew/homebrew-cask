cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.19.0"
  sha256 arm:          "4024b531f14cc96c3d3e33dcc5e12c4b5114d219a01323d0173fd534459fd368",
         intel:        "4024b531f14cc96c3d3e33dcc5e12c4b5114d219a01323d0173fd534459fd368",
         arm64_linux:  "755d7aa07c966995caf154fedca5dee0c1cbc8f5c7c2679c67a8be6d6467322d",
         x86_64_linux: "0cd30b366d40090aba01b0a1fe021bdcfc02b11ff9151c7aaced5b663db9b856"

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
