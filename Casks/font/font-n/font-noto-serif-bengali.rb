cask "font-noto-serif-bengali" do
  version "3.000"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifbengali/NotoSerifBengali%5Bwdth%2Cwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Bengali"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Bengali"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Bengali",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifBengali[wdth,wght].ttf"

  # No zap stanza required
end
