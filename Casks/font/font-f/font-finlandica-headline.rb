cask "font-finlandica-headline" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/finlandicaheadline"
  name "Finlandica Headline"
  homepage "https://fonts.google.com/specimen/Finlandica+Headline"

  font "FinlandicaHeadline-Italic[wght].ttf"
  font "FinlandicaHeadline[wght].ttf"

  # No zap stanza required
end
