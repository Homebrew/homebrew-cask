cask "font-stix-two-text" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/stixtwotext"
  name "STIX Two Text"
  homepage "https://fonts.google.com/specimen/STIX+Two+Text"

  font "STIXTwoText-Italic[wght].ttf"
  font "STIXTwoText[wght].ttf"

  # No zap stanza required
end
