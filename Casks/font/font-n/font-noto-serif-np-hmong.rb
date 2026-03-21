cask "font-noto-serif-np-hmong" do
  version "1.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifnphmong/NotoSerifNPHmong%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif NP Hmong"
  homepage "https://fonts.google.com/specimen/Noto+Serif+NP+Hmong"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif NP Hmong",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifNPHmong[wght].ttf"

  # No zap stanza required
end
