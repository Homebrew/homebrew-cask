cask "font-jetbrains-maple-mono" do
  version "1.2304.73"
  sha256 "0b435edb1f7361ec292aaf91418da25d4dd48bc6dded2ae02a71d8006c711dab"

  url "https://github.com/SpaceTimee/Fusion-JetBrainsMapleMono/releases/download/#{version}/JetBrainsMapleMono-XX-XX-XX.zip"
  name "JetBrains Maple Mono"
  homepage "https://github.com/SpaceTimee/Fusion-JetBrainsMapleMono"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "font-jetbrains-maple-mono-nf"

  font "JetBrainsMapleMono-Bold.ttf"
  font "JetBrainsMapleMono-BoldItalic.ttf"
  font "JetBrainsMapleMono-ExtraBold.ttf"
  font "JetBrainsMapleMono-ExtraBoldItalic.ttf"
  font "JetBrainsMapleMono-ExtraLight.ttf"
  font "JetBrainsMapleMono-ExtraLightItalic.ttf"
  font "JetBrainsMapleMono-Italic.ttf"
  font "JetBrainsMapleMono-Light.ttf"
  font "JetBrainsMapleMono-LightItalic.ttf"
  font "JetBrainsMapleMono-Medium.ttf"
  font "JetBrainsMapleMono-MediumItalic.ttf"
  font "JetBrainsMapleMono-Regular.ttf"
  font "JetBrainsMapleMono-SemiBold.ttf"
  font "JetBrainsMapleMono-SemiBoldItalic.ttf"
  font "JetBrainsMapleMono-Thin.ttf"
  font "JetBrainsMapleMono-ThinItalic.ttf"

  # No zap stanza required
end
