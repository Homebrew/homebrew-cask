cask "effectcraft" do
  arch arm:   on_system_conditional(macos: "universal", linux: "aarch64"),
       intel: on_system_conditional(macos: "universal", linux: "x86_64")
  os macos: "macos", linux: "linux"
  url_end = on_system_conditional macos: "dmg", linux: "AppImage"

  version "0.9.2"
  sha256 arm:          "abc02b0b7afda63802dbd4af8ded9c0c35f18af7b09e88002adcc986f676f6fe",
         intel:        "abc02b0b7afda63802dbd4af8ded9c0c35f18af7b09e88002adcc986f676f6fe",
         arm64_linux:  "130631b777434f0d84beb88b2d7a89909a450a70bb54ed98becb406d08d2d1ba",
         x86_64_linux: "f5ef1c2ad32051ea6c13b13c170a73bd6f2d0a839a4ff71895b16a90d3a3ae37"

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
