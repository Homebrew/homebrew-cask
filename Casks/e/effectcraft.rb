cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.22.0"
  sha256 arm:          "bd71b859f5e385a52e77604c4da19069e5f9ee94f99bb9d89ed3b63ec8c385d4",
         intel:        "bd71b859f5e385a52e77604c4da19069e5f9ee94f99bb9d89ed3b63ec8c385d4",
         arm64_linux:  "7e13ccc2066eadea2212c1b39780e7cceb3ca16b48858ff6c0697960cff55496",
         x86_64_linux: "c3bd7078b2101ef7639bfce24d3217059ae5e63f81c24c4216c3c4be812a6752"

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
