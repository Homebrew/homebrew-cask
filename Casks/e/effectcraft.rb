cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.24.1"
  sha256 arm:          "22d0111d1daaa7142ee6266a2b8174d2f4d375c4c12e0dfc40a04db3dfb35851",
         intel:        "22d0111d1daaa7142ee6266a2b8174d2f4d375c4c12e0dfc40a04db3dfb35851",
         arm64_linux:  "89898fa346ee5c59b3815f24db318178ca23a4b593769bdd840da81f72f4d06f",
         x86_64_linux: "9f8a16cf74147c9e2ac3b65fa6f5be96a3e10ead92ddf08d544f5d3990ad64dc"

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
