cask "font-chiron-goround-tc" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chirongoroundtc/ChironGoRoundTC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Chiron GoRound TC"
  homepage "https://fonts.google.com/specimen/Chiron+GoRound+TC"

  font "ChironGoRoundTC[wght].ttf"

  # No zap stanza required
end
