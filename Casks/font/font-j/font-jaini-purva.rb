cask "font-jaini-purva" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/jainipurva/JainiPurva-Regular.ttf"
  name "Jaini Purva"
  homepage "https://fonts.google.com/specimen/Jaini+Purva"

  font "JainiPurva-Regular.ttf"

  # No zap stanza required
end
