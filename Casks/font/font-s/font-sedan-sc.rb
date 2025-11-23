cask "font-sedan-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sedansc/SedanSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sedan SC"
  homepage "https://fonts.google.com/specimen/Sedan+SC"

  font "SedanSC-Regular.ttf"

  # No zap stanza required
end
