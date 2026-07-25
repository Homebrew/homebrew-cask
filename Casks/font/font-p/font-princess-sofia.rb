cask "font-princess-sofia" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/princesssofia/PrincessSofia-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Princess Sofia"
  homepage "https://fonts.google.com/specimen/Princess+Sofia"

  font "PrincessSofia-Regular.ttf"

  # No zap stanza required
end
