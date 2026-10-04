cask "font-clarity-city" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/claritycity"
  name "Clarity City"
  homepage "https://fonts.google.com/specimen/Clarity+City"

  font "ClarityCity-Italic[wght].ttf"
  font "ClarityCity[wght].ttf"

  # No zap stanza required
end
