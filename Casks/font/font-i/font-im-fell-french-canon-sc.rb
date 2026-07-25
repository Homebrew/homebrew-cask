cask "font-im-fell-french-canon-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/imfellfrenchcanonsc/IMFeFCsc28P.ttf",
      verified: "github.com/google/fonts/"
  name "IM Fell French Canon SC"
  homepage "https://fonts.google.com/specimen/IM+Fell+French+Canon+SC"

  font "IMFeFCsc28P.ttf"

  # No zap stanza required
end
