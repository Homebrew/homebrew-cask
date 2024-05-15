cask "font-crafty-girls" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/craftygirls/CraftyGirls-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Crafty Girls"
  desc "Inspired by crochet hooks, yarn, button boxes, thread, and glitter"
  homepage "https://fonts.google.com/specimen/Crafty+Girls"

  font "CraftyGirls-Regular.ttf"

  # No zap stanza required
end
