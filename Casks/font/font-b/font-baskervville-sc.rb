cask "font-baskervville-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baskervvillesc/BaskervvilleSC-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Baskervville SC"
  homepage "https://fonts.google.com/specimen/Baskervville+SC"

  font "BaskervvilleSC-Regular.ttf"

  # No zap stanza required
end
