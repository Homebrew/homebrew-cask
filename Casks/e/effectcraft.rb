cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.7.0"
  sha256 arm:          "d394fd0c04372aad89fb99a160bf2eeecf7e6035b26bf2da209cd7819b1bcb5d",
         intel:        "d394fd0c04372aad89fb99a160bf2eeecf7e6035b26bf2da209cd7819b1bcb5d",
         arm64_linux:  "b877da01b7b420d109de68be11cc413e3eec44afd593a7c68277688b41ab9872",
         x86_64_linux: "7992e6a5279c29c8295876f1874c28afa9006daa4d2fefecc8ecae30924eceaa"

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
