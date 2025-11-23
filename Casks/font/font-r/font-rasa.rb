cask "font-rasa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/rasa"
  name "Rasa"
  homepage "https://fonts.google.com/specimen/Rasa"

  font "Rasa-Italic[wght].ttf"
  font "Rasa[wght].ttf"

  # No zap stanza required
end
