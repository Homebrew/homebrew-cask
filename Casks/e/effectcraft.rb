cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.20.0"
  sha256 arm:          "d603a803e3edc0a8b440c5fbcd2caf9b775f85305100090d3ad2e4c04a98bac1",
         intel:        "d603a803e3edc0a8b440c5fbcd2caf9b775f85305100090d3ad2e4c04a98bac1",
         arm64_linux:  "021946631486a7970db824b515a275ee95be3edb584f9aeef986e36171c29cdb",
         x86_64_linux: "6ccada9ca8b54114b79f7b99c33a515a3e4b54a9baba43eb434e885e4db5a5f7"

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
