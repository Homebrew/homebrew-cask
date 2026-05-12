cask "font-finlandica-headline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      branch:    "main",
      only_path: "ofl/finlandicaheadline"
  name "Finlandica Headline"
  homepage "https://github.com/HelsinkiTypeStudio/FinlandicaHeadline"

  font "FinlandicaHeadline-Italic[wght].ttf"
  font "FinlandicaHeadline[wght].ttf"

  # No zap stanza required
end
