cask "font-inclusive-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/inclusivesans"
  name "Inclusive Sans"
  homepage "https://fonts.google.com/specimen/Inclusive+Sans"

  font "InclusiveSans-Italic[wght].ttf"
  font "InclusiveSans[wght].ttf"

  # No zap stanza required
end
