cask "font-jaini-purva" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jainipurva/JainiPurva-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Jaini Purva"
  desc "Typeface based on the calligraphic style of the Jain Kalpasutra manuscripts"
  homepage "https://fonts.google.com/specimen/Jaini+Purva"

  font "JainiPurva-Regular.ttf"

  # No zap stanza required
end
