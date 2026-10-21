cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.13.0"
  sha256 arm:          "87eadfb5f56c6d3e792d356ed427a10c12810a8837114a64c89ef73cc90337a9",
         intel:        "87eadfb5f56c6d3e792d356ed427a10c12810a8837114a64c89ef73cc90337a9",
         arm64_linux:  "fad75766f6a8ebe7f5fdba4b925a38fce5f9c8e586bb6ec70988b71f6e1c6d0d",
         x86_64_linux: "b1d3e8e3033b07b654fc9d8f0baea241da48703f9925d7b1ea3cfa976fd87868"

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
