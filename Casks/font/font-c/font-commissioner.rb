cask "font-commissioner" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/commissioner/Commissioner%5BFLAR%2CVOLM%2Cslnt%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Commissioner"
  homepage "https://fonts.google.com/specimen/Commissioner"

  font "Commissioner[FLAR,VOLM,slnt,wght].ttf"

  # No zap stanza required
end
