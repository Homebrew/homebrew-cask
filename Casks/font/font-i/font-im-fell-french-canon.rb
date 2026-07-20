cask "font-im-fell-french-canon" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/imfellfrenchcanon"
  name "IM Fell French Canon"
  homepage "https://fonts.google.com/specimen/IM+Fell+French+Canon"

  font "IMFeFCit28P.ttf"
  font "IMFeFCrm28P.ttf"

  # No zap stanza required
end
