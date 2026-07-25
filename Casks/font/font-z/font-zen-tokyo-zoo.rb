cask "font-zen-tokyo-zoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zentokyozoo/ZenTokyoZoo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Tokyo Zoo"
  homepage "https://fonts.google.com/specimen/Zen+Tokyo+Zoo"

  font "ZenTokyoZoo-Regular.ttf"

  # No zap stanza required
end
