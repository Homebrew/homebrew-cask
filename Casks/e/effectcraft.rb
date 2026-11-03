cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.21.0"
  sha256 arm:          "edf311ed25b75da1793c808a37336e00a353e733d657f64eddc35f0999b66966",
         intel:        "edf311ed25b75da1793c808a37336e00a353e733d657f64eddc35f0999b66966",
         arm64_linux:  "dd5b7598affdbb12195057e6c2c7dc9bf12214af5ae9984db21feb7d8daa32b6",
         x86_64_linux: "fb19e41e3a3dd2878b03d3504f75ab616c527fa75428491b6016d46789fd9f20"

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
