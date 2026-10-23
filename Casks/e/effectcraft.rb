cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.16.0"
  sha256 arm:          "b387729d7ffad9c504edcb66cfe46bafc5b54542f9d2a0727669ce463eb0814c",
         intel:        "b387729d7ffad9c504edcb66cfe46bafc5b54542f9d2a0727669ce463eb0814c",
         arm64_linux:  "d10bc0625f756fe35bc00509079f6a96a58e2fdb18dba344564f82d3e7b3a665",
         x86_64_linux: "93a6c98e4a75552c4e5f11e0c6834d3b6f8a6718c1670a8349f637e6eecea0bc"

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
