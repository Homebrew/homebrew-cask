cask "font-comme" do
  version "1.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/comme/Comme%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Comme"
  homepage "https://fonts.google.com/specimen/Comme"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Comme",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Comme[wght].ttf"

  # No zap stanza required
end
