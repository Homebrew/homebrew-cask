cask "font-baloo-chettan-2" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/baloochettan2/BalooChettan2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Baloo Chettan 2"
  homepage "https://fonts.google.com/specimen/Baloo+Chettan+2"

  font "BalooChettan2[wght].ttf"

  # No zap stanza required
end
