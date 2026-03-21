cask "font-luxurious-roman" do
  version "1.010"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/luxuriousroman/LuxuriousRoman-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Luxurious Roman"
  homepage "https://fonts.google.com/specimen/Luxurious+Roman"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Luxurious Roman",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "LuxuriousRoman-Regular.ttf"

  # No zap stanza required
end
