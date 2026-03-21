cask "font-m-plus-1" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mplus1/MPLUS1%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS 1"
  homepage "https://fonts.google.com/specimen/M+PLUS+1"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "M PLUS 1",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MPLUS1[wght].ttf"

  # No zap stanza required
end
