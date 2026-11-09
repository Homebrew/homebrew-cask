cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.23.0"
  sha256 arm:          "434b5d646d874f3743ebdd922cd3540ff6a758baf27ecc9e1ab3455d8f64768c",
         intel:        "434b5d646d874f3743ebdd922cd3540ff6a758baf27ecc9e1ab3455d8f64768c",
         arm64_linux:  "e6400652fdf1329eab5908e6921857ad8b3db793510cd96c291a9a05c2f3cc8c",
         x86_64_linux: "8168f27327f2edb051e268475c37631479aa08893f1e88b0add717d5f82a158f"

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
