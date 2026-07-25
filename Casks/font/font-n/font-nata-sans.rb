cask "font-nata-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/natasans/NataSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Nata Sans"
  homepage "https://fonts.google.com/specimen/Nata+Sans"

  font "NataSans[wght].ttf"

  # No zap stanza required
end
