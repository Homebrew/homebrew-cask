cask "font-fuzzy-bubbles" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fuzzybubbles"
  name "Fuzzy Bubbles"
  homepage "https://fonts.google.com/specimen/Fuzzy+Bubbles"

  font "FuzzyBubbles-Bold.ttf"
  font "FuzzyBubbles-Regular.ttf"

  # No zap stanza required
end
