cask "font-dynapuff" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/dynapuff/DynaPuff%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "DynaPuff"
  homepage "https://fonts.google.com/specimen/DynaPuff"

  font "DynaPuff[wdth,wght].ttf"

  # No zap stanza required
end
