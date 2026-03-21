cask "font-cactus-classical-serif" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cactusclassicalserif/CactusClassicalSerif-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Cactus Classical Serif"
  homepage "https://fonts.google.com/specimen/Cactus+Classical+Serif"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Cactus Classical Serif",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CactusClassicalSerif-Regular.ttf"

  # No zap stanza required
end
