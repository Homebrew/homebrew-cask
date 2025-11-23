cask "font-poltawski-nowy" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/poltawskinowy"
  name "Poltawski Nowy"
  homepage "https://fonts.google.com/specimen/Poltawski+Nowy"

  font "PoltawskiNowy-Italic[wght].ttf"
  font "PoltawskiNowy[wght].ttf"

  # No zap stanza required
end
