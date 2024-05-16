cask "font-unbounded" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/unbounded/Unbounded%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Unbounded"
  desc "Possibly the first on-chain funded font in the world"
  homepage "https://fonts.google.com/specimen/Unbounded"

  font "Unbounded[wght].ttf"

  # No zap stanza required
end
