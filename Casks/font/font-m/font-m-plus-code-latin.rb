cask "font-m-plus-code-latin" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mpluscodelatin/MPLUSCodeLatin%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS Code Latin"
  homepage "https://fonts.google.com/specimen/M+PLUS+Code+Latin"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "M PLUS Code Latin",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MPLUSCodeLatin[wdth,wght].ttf"

  # No zap stanza required
end
