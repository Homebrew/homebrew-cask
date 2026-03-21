cask "font-m-plus-1-code" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/mplus1code/MPLUS1Code%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "M PLUS 1 Code"
  homepage "https://fonts.google.com/specimen/M+PLUS+1+Code"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "M PLUS 1 Code",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "MPLUS1Code[wght].ttf"

  # No zap stanza required
end
