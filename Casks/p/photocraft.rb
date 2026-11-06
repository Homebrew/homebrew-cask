cask "photocraft" do
  arch arm: "aarch64", intel: "x86_64"
  url_end = on_system_conditional macos: "macos-universal.dmg", linux: "linux-#{arch}.AppImage"

  version "0.21.0"
  sha256 arm:          "aa43b184ae8a2ae2340b7f2522a996431ffec3597ec76b6d977a44a6cbd7bab1",
         intel:        "aa43b184ae8a2ae2340b7f2522a996431ffec3597ec76b6d977a44a6cbd7bab1",
         arm64_linux:  "5027514031c2862bf3ae21a073e33ee2523acda5974f519dfa6487d689352a2b",
         x86_64_linux: "7726533adaa5896413d2ce0be858d522256450bfef244fbc5433bed4f99fa60b"

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
