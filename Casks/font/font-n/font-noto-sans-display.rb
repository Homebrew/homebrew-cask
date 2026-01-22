cask "font-noto-sans-display" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/notosansdisplay"
  name "Noto Sans Display"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Display"

  font "NotoSansDisplay-Italic[wdth,wght].ttf"
  font "NotoSansDisplay[wdth,wght].ttf"

  # No zap stanza required
end
