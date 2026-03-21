cask "font-el-messiri" do
  version "2.020"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/elmessiri/ElMessiri%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "El Messiri"
  homepage "https://fonts.google.com/specimen/El+Messiri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "El Messiri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ElMessiri[wght].ttf"

  # No zap stanza required
end
