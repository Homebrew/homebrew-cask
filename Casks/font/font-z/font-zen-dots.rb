cask "font-zen-dots" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/zendots/ZenDots-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Zen Dots"
  desc "One of three latin fonts part of the zen fonts collection"
  homepage "https://fonts.google.com/specimen/Zen+Dots"

  font "ZenDots-Regular.ttf"

  # No zap stanza required
end
