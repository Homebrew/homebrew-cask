cask "font-chiron-goround-tc" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/chirongoroundtc/ChironGoRoundTC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Chiron GoRound TC"
  homepage "https://fonts.google.com/specimen/Chiron+GoRound+TC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Chiron GoRound TC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ChironGoRoundTC[wght].ttf"

  # No zap stanza required
end
