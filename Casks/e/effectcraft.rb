cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.24.0"
  sha256 arm:          "7e4aa622b1d367cbe6369d358390c903ee10eff11ee83064ef42164028a1522e",
         intel:        "7e4aa622b1d367cbe6369d358390c903ee10eff11ee83064ef42164028a1522e",
         arm64_linux:  "e9b316af90390eada040a9c3d092c8eb6c5aa73f6615fc5641d5bbb98a335601",
         x86_64_linux: "4d3332ed41a1b63aa8131295ae2e4aa9d4fc01dc84f750d805c79a4e8bd01a9e"

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
