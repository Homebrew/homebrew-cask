cask "font-open-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/opensans"
  name "Open Sans"
  homepage "https://fonts.google.com/specimen/Open+Sans"

  font "OpenSans-Italic[wdth,wght].ttf"
  font "OpenSans[wdth,wght].ttf"

  # No zap stanza required
end
