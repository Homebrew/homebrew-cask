cask "font-fontdiner-swanky" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/fontdinerswanky/FontdinerSwanky-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Fontdiner Swanky"
  homepage "https://fonts.google.com/specimen/Fontdiner+Swanky"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fontdiner Swanky",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FontdinerSwanky-Regular.ttf"

  # No zap stanza required
end
