cask "font-jetbrains-maple-mono-nf" do
  version "1.2304.74"
  sha256 "f0c9ce299c299811ca2509e3cad8de38b6f07ed331e0db964b586538480e339f"

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
