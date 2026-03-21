cask "font-anek-malayalam" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anekmalayalam/AnekMalayalam%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Malayalam"
  homepage "https://fonts.google.com/specimen/Anek+Malayalam"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Malayalam",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekMalayalam[wdth,wght].ttf"

  # No zap stanza required
end
