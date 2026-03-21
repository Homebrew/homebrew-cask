cask "font-noto-serif-sc" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifsc/NotoSerifSC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif SC"
  homepage "https://fonts.google.com/specimen/Noto+Serif+SC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif SC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifSC[wght].ttf"

  # No zap stanza required
end
