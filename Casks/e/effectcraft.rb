cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.15.0"
  sha256 arm:          "260fa7efa050ddd2cdaa95a3e67c81da676c5a7e83428acc89ccdef73005374f",
         intel:        "260fa7efa050ddd2cdaa95a3e67c81da676c5a7e83428acc89ccdef73005374f",
         arm64_linux:  "f2acd8aef27629fcfc823dbcb1313631e36712167d7f226df8f83ba757418dfb",
         x86_64_linux: "c4387eaa3436ccf2040ae01db6ce4e15c9c73574f37945d55b9c4eafcd6c6abf"

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
