cask "font-glegoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/glegoo"
  name "Glegoo"
  homepage "https://fonts.google.com/specimen/Glegoo"

  font "Glegoo-Bold.ttf"
  font "Glegoo-Regular.ttf"

  # No zap stanza required
end
