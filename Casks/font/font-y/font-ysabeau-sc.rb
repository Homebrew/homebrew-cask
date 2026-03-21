cask "font-ysabeau-sc" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ysabeausc/YsabeauSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Ysabeau SC"
  homepage "https://fonts.google.com/specimen/Ysabeau+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ysabeau SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YsabeauSC[wght].ttf"

  # No zap stanza required
end
