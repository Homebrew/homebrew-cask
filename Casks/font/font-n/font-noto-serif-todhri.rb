cask "font-noto-serif-todhri" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftodhri/NotoSerifTodhri-Regular.ttf"
  name "Noto Serif Todhri"
  homepage "https://github.com/notofonts/todhri"

  font "NotoSerifTodhri-Regular.ttf"

  # No zap stanza required
end
