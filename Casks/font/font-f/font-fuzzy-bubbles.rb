cask "font-fuzzy-bubbles" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/fuzzybubbles"
  name "Fuzzy Bubbles"
  homepage "https://fonts.google.com/specimen/Fuzzy+Bubbles"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fuzzy Bubbles",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "FuzzyBubbles-Bold.ttf"
  font "FuzzyBubbles-Regular.ttf"

  # No zap stanza required
end
