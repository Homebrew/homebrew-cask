cask "font-mina" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/mina"
  name "Mina"
  homepage "https://fonts.google.com/specimen/Mina"

  font "Mina-Bold.ttf"
  font "Mina-Regular.ttf"

  # No zap stanza required
end
