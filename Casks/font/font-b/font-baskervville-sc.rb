cask "font-baskervville-sc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baskervvillesc/BaskervvilleSC-Regular.ttf"
  name "Baskervville SC"
  homepage "https://github.com/anrt-type/ANRT-Baskervville"

  font "BaskervvilleSC-Regular.ttf"

  # No zap stanza required
end
