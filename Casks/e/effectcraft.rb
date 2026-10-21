cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.14.0"
  sha256 arm:          "5bb0841a65e763c4cd27dc0bcc38a29523eb2f1d51e8674d44846700a7f7f765",
         intel:        "5bb0841a65e763c4cd27dc0bcc38a29523eb2f1d51e8674d44846700a7f7f765",
         arm64_linux:  "166763333ecfa0667558b96b8da2605e6ad71d034f4dff9e86a85d424dfb6260",
         x86_64_linux: "061e00c17d3d57c23dd86c168b03eaa9e56ff3923c19e5acb3390699cf11edbc"

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
