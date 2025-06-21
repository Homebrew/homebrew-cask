cask "font-jetbrains-maple-mono-nf" do
  version "1.2304.73"
  sha256 "7c71c304dce9aafb9d2a5709874b3dfcce2ca4f45e62970b1c81fa2b626e9c25"

  url "https://github.com/SpaceTimee/Fusion-JetBrainsMapleMono/releases/download/#{version}/JetBrainsMapleMono-NF-XX-XX.zip"
  name "JetBrains Maple Mono NF"
  homepage "https://github.com/SpaceTimee/Fusion-JetBrainsMapleMono"

  livecheck do
    url :url
    strategy :github_latest
  end

  conflicts_with cask: "font-jetbrains-maple-mono"

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
