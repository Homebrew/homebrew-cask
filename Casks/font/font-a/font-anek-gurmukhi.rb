cask "font-anek-gurmukhi" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekgurmukhi/AnekGurmukhi%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Gurmukhi"
  homepage "https://fonts.google.com/specimen/Anek+Gurmukhi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Gurmukhi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekGurmukhi[wdth,wght].ttf"

  # No zap stanza required
end
