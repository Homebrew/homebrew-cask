cask "font-ruda" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/ruda/Ruda%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Ruda"
  homepage "https://fonts.google.com/specimen/Ruda"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Ruda",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Ruda[wght].ttf"

  # No zap stanza required
end
