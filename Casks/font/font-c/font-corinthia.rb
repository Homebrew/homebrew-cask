cask "font-corinthia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/corinthia"
  name "Corinthia"
  homepage "https://fonts.google.com/specimen/Corinthia"

  font "Corinthia-Bold.ttf"
  font "Corinthia-Regular.ttf"

  # No zap stanza required
end
