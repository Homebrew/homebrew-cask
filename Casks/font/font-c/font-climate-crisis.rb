cask "font-climate-crisis" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/climatecrisis/ClimateCrisis%5BYEAR%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Climate Crisis"
  homepage "https://fonts.google.com/specimen/Climate+Crisis"

  font "ClimateCrisis[YEAR].ttf"

  # No zap stanza required
end
