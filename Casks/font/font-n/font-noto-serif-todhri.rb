cask "font-noto-serif-todhri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftodhri/NotoSerifTodhri-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Todhri"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Todhri"

  font "NotoSerifTodhri-Regular.ttf"

  # No zap stanza required
end
