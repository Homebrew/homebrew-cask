cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.25.1"
  sha256 arm:          "c54579332a66d8b0f3b9e01d8a712039516eed9f624bde9cefe6d134b3caec28",
         intel:        "c54579332a66d8b0f3b9e01d8a712039516eed9f624bde9cefe6d134b3caec28",
         arm64_linux:  "7ac2fb9ef37a91c7425134f1f0b8eac0791a531934925298ded03da1c87ec6cc",
         x86_64_linux: "7da14f5ca82027e2cb709dc91806c70ce41ff432adf27d2d0a37889d21b7a1ba"

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
