cask "font-zen-antique" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zenantique/ZenAntique-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Antique"
  homepage "https://fonts.google.com/specimen/Zen+Antique"

  font "ZenAntique-Regular.ttf"

  # No zap stanza required
end
