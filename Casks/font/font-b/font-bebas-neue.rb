cask "font-bebas-neue" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bebasneue/BebasNeue-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bebas Neue"
  homepage "https://fonts.google.com/specimen/Bebas+Neue"

  font "BebasNeue-Regular.ttf"

  # No zap stanza required
end
