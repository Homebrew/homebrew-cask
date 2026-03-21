cask "font-anek-bangla" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekbangla/AnekBangla%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Bangla"
  homepage "https://fonts.google.com/specimen/Anek+Bangla"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Bangla",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekBangla[wdth,wght].ttf"

  # No zap stanza required
end
