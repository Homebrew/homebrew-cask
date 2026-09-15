cask "font-tiro-tamil" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/tirotamil"
  name "Tiro Tamil"
  homepage "https://fonts.google.com/specimen/Tiro+Tamil"

  font "TiroTamil-Italic.ttf"
  font "TiroTamil-Regular.ttf"

  # No zap stanza required
end
