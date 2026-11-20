cask "font-zen-tokyo-zoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zentokyozoo/ZenTokyoZoo-Regular.ttf"
  name "Zen Tokyo Zoo"
  homepage "https://fonts.google.com/specimen/Zen+Tokyo+Zoo"

  font "ZenTokyoZoo-Regular.ttf"

  zap :not_required
end
