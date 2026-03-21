cask "font-sansita-swashed" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sansitaswashed/SansitaSwashed%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Sansita Swashed"
  homepage "https://fonts.google.com/specimen/Sansita+Swashed"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Sansita Swashed",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "SansitaSwashed[wght].ttf"

  # No zap stanza required
end
