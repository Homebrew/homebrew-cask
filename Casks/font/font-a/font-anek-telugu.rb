cask "font-anek-telugu" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/anektelugu/AnekTelugu%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Anek Telugu"
  homepage "https://fonts.google.com/specimen/Anek+Telugu"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Anek Telugu",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "AnekTelugu[wdth,wght].ttf"

  # No zap stanza required
end
