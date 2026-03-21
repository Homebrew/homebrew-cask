cask "font-noto-serif-khojki" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifkhojki/NotoSerifKhojki%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Khojki"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Khojki"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Khojki",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifKhojki[wght].ttf"

  # No zap stanza required
end
