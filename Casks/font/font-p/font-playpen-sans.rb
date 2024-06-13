cask "font-playpen-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/playpensans/PlaypenSans%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Playpen Sans"
  homepage "https://fonts.google.com/specimen/Playpen+Sans"

  font "PlaypenSans[wght].ttf"

  # No zap stanza required
end
