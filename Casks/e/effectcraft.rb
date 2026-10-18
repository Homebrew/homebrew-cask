cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.11.1"
  sha256 arm:          "73471a98b510596bcca96c6c055665b36ebcf619d3937c3e246d5249ad046cf4",
         intel:        "73471a98b510596bcca96c6c055665b36ebcf619d3937c3e246d5249ad046cf4",
         arm64_linux:  "14f869f7a2bd38ab42ffedca70062264326d1de70a16f39af1ae598911a42e09",
         x86_64_linux: "231e60f367334d7e85891fe653c4a434aa093c21313e1ecc8fe1459b6fd58379"

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
