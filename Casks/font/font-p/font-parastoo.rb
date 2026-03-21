cask "font-parastoo" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/parastoo/Parastoo%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Parastoo"
  homepage "https://fonts.google.com/specimen/Parastoo"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Parastoo",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Parastoo[wght].ttf"

  # No zap stanza required
end
