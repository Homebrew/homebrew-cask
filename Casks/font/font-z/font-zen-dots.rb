cask "font-zen-dots" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zendots/ZenDots-Regular.ttf"
  name "Zen Dots"
  homepage "https://fonts.google.com/specimen/Zen+Dots"

  font "ZenDots-Regular.ttf"

  # No zap stanza required
end
