cask "font-odor-mean-chey" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/odormeanchey/OdorMeanChey-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Odor Mean Chey"
  homepage "https://fonts.google.com/specimen/Odor+Mean+Chey"

  font "OdorMeanChey-Regular.ttf"

  # No zap stanza required
end
