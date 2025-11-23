cask "font-lora" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/lora"
  name "Lora"
  homepage "https://fonts.google.com/specimen/Lora"

  font "Lora-Italic[wght].ttf"
  font "Lora[wght].ttf"

  # No zap stanza required
end
