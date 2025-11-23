cask "font-amarna" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/amarna"
  name "Amarna"
  homepage "https://github.com/ijvanl/Amarna"

  font "Amarna-Italic[wght].ttf"
  font "Amarna[wght].ttf"

  # No zap stanza required
end
