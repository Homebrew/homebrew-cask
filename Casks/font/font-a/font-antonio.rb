cask "font-antonio" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/antonio/Antonio%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Antonio"
  homepage "https://fonts.google.com/specimen/Antonio"

  font "Antonio[wght].ttf"

  # No zap stanza required
end
