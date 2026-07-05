cask "font-scoutie-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/scoutiesans"
  name "Scoutie Sans"
  homepage "https://github.com/sursly/scoutie"

  font "ScoutieSans-Italic[wght].ttf"
  font "ScoutieSans[wght].ttf"

  # No zap stanza required
end
