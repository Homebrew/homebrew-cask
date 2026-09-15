cask "font-castoro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/castoro"
  name "Castoro"
  homepage "https://fonts.google.com/specimen/Castoro"

  font "Castoro-Italic[wght].ttf"
  font "Castoro[wght].ttf"

  # No zap stanza required
end
