cask "font-noto-serif-tangut" do
  version "2.170"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoseriftangut/NotoSerifTangut-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Tangut"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Tangut"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Tangut",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifTangut-Regular.ttf"

  # No zap stanza required
end
