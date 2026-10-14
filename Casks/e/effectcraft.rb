cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.10.0"
  sha256 arm:          "d84bfac63e566815b413309cf92d3db48cc1a3d2f20b949742d45735bdb597e8",
         intel:        "d84bfac63e566815b413309cf92d3db48cc1a3d2f20b949742d45735bdb597e8",
         arm64_linux:  "6bc2c14e15a6a4b69b32e852b7e6ab73ab6b8c9f47a034fd6a946b23a6af725d",
         x86_64_linux: "d0e4016f6e5915bf847465fcfa4053a1607e0afa16b35fed156a78c75e88b650"

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
