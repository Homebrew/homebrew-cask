cask "font-tiro-telugu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/tirotelugu"
  name "Tiro Telugu"
  homepage "https://fonts.google.com/specimen/Tiro+Telugu"

  font "TiroTelugu-Italic.ttf"
  font "TiroTelugu-Regular.ttf"

  # No zap stanza required
end
