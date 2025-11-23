cask "font-sofia-sans-condensed" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/sofiasanscondensed"
  name "Sofia Sans Condensed"
  homepage "https://fonts.google.com/specimen/Sofia+Sans+Condensed"

  font "SofiaSansCondensed-Italic[wght].ttf"
  font "SofiaSansCondensed[wght].ttf"

  # No zap stanza required
end
