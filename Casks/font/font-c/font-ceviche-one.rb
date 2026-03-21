cask "font-ceviche-one" do
  version "1.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/cevicheone/CevicheOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ceviche One"
  homepage "https://fonts.google.com/specimen/Ceviche+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ceviche One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "CevicheOne-Regular.ttf"

  # No zap stanza required
end
