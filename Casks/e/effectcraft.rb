cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.23.1"
  sha256 arm:          "10703ae0b8b279241e7a87b69bfa5ae0213cc21a67a04ea978e84309f6e8e2f8",
         intel:        "10703ae0b8b279241e7a87b69bfa5ae0213cc21a67a04ea978e84309f6e8e2f8",
         arm64_linux:  "b1198a6f9d5ecd28a9f5bcf90ce3ee95448f0ea7eaac0792eeb3bcad9a05d6dc",
         x86_64_linux: "7905485d7e91999a0c19ecba447d0dfd11c13bddb132bdf9cca65cd8b60671fb"

  on_macos do
    app "EffectCraft.app"

    zap trash: [
      "~/Library/Application Support/EffectCraft",
      "~/Library/Caches/EffectCraft",
    ]
  end
  on_linux do
    app_image "effectcraft-#{version}-linux-#{arch}.AppImage", target: "EffectCraft.AppImage"

    zap trash: [
      "~/.cache/effectcraft",
      "~/.config/effectcraft",
      "~/.local/share/applications/ai.storyteller.effectcraft.desktop",
      "~/.local/share/icons/hicolor/256x256/apps/ai.storyteller.effectcraft.png",
    ]
  end

  url "https://github.com/storytold/effectcraft/releases/download/v#{version}/effectcraft-#{version}-#{os}-#{arch}.#{url_end}"
  name "EffectCraft"
  desc "Motion graphics and visual effects compositor"
  homepage "https://getartcraft.com/apps/effectcraft"
end
