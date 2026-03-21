cask "font-noto-serif-tc" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftc/NotoSerifTC%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif TC"
  homepage "https://fonts.google.com/specimen/Noto+Serif+TC"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif TC",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifTC[wght].ttf"

  # No zap stanza required
end
