cask "font-fredoka" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/fredoka/Fredoka%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Fredoka"
  homepage "https://fonts.google.com/specimen/Fredoka"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Fredoka",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Fredoka[wdth,wght].ttf"

  # No zap stanza required
end
