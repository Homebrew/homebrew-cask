cask "font-caprasimo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/caprasimo/Caprasimo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Caprasimo"
  homepage "https://fonts.google.com/specimen/Caprasimo"

  font "Caprasimo-Regular.ttf"

  # No zap stanza required
end
