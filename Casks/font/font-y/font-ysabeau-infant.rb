cask "font-ysabeau-infant" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/ysabeauinfant"
  name "Ysabeau Infant"
  homepage "https://fonts.google.com/specimen/Ysabeau+Infant"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ysabeau Infant",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "YsabeauInfant-Italic[wght].ttf"
  font "YsabeauInfant[wght].ttf"

  # No zap stanza required
end
