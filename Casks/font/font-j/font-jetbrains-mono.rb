cask "font-jetbrains-mono" do
  version "2.304"
  sha256 "6f6376c6ed2960ea8a963cd7387ec9d76e3f629125bc33d1fdcd7eb7012f7bbf"

  url "https://github.com/JetBrains/JetBrainsMono/releases/download/v#{version}/JetBrainsMono-#{version}.zip",
      verified: "github.com/JetBrains/JetBrainsMono/"
  name "JetBrains Mono"
  homepage "https://www.jetbrains.com/lp/mono"

  livecheck do
    url "https://github.com/JetBrains/JetBrainsMono"
    strategy :gitHub_latest
  end

  font "fonts/ttf/JetBrainsMonoNL-Bold.ttf"
  font "fonts/ttf/JetBrainsMonoNL-BoldItalic.ttf"
  font "fonts/ttf/JetBrainsMonoNL-ExtraBold.ttf"
  font "fonts/ttf/JetBrainsMonoNL-ExtraBoldItalic.ttf"
  font "fonts/ttf/JetBrainsMonoNL-ExtraLight.ttf"
  font "fonts/ttf/JetBrainsMonoNL-ExtraLightItalic.ttf"
  font "fonts/ttf/JetBrainsMonoNL-Italic.ttf"
  font "fonts/ttf/JetBrainsMonoNL-Light.ttf"
  font "fonts/ttf/JetBrainsMonoNL-LightItalic.ttf"
  font "fonts/ttf/JetBrainsMonoNL-Medium.ttf"
  font "fonts/ttf/JetBrainsMonoNL-MediumItalic.ttf"
  font "fonts/ttf/JetBrainsMonoNL-Regular.ttf"
  font "fonts/ttf/JetBrainsMonoNL-SemiBold.ttf"
  font "fonts/ttf/JetBrainsMonoNL-SemiBoldItalic.ttf"
  font "fonts/ttf/JetBrainsMonoNL-Thin.ttf"
  font "fonts/ttf/JetBrainsMonoNL-ThinItalic.ttf"
  font "fonts/variable/JetBrainsMono-Italic[wght].ttf"
  font "fonts/variable/JetBrainsMono[wght].ttf"

  # No zap stanza required
end
