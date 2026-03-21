cask "font-m-plus-2" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mplus2/MPLUS2%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS 2"
  homepage "https://fonts.google.com/specimen/M+PLUS+2"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "M PLUS 2",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MPLUS2[wght].ttf"

  # No zap stanza required
end
