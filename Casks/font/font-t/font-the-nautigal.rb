cask "font-the-nautigal" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/thenautigal"
  name "The Nautigal"
  homepage "https://fonts.google.com/specimen/The+Nautigal"

  font "TheNautigal-Bold.ttf"
  font "TheNautigal-Regular.ttf"

  # No zap stanza required
end
