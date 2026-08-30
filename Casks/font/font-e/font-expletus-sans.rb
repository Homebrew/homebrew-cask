cask "font-expletus-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/expletussans"
  name "Expletus Sans"
  homepage "https://fonts.google.com/specimen/Expletus+Sans"

  font "ExpletusSans-Italic[wght].ttf"
  font "ExpletusSans[wght].ttf"

  # No zap stanza required
end
