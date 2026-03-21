cask "font-linefont" do
  version "3.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/linefont/Linefont%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Linefont"
  homepage "https://fonts.google.com/specimen/Linefont"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Linefont",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "Linefont[wdth,wght].ttf"

  # No zap stanza required
end
