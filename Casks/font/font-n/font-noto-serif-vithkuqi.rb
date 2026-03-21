cask "font-noto-serif-vithkuqi" do
  version "1.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifvithkuqi/NotoSerifVithkuqi%5Bwght%5D.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Vithkuqi"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Vithkuqi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Vithkuqi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifVithkuqi[wght].ttf"

  # No zap stanza required
end
