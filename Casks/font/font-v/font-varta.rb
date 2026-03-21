cask "font-varta" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/varta/Varta%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Varta"
  homepage "https://fonts.google.com/specimen/Varta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Varta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Varta[wght].ttf"

  # No zap stanza required
end
