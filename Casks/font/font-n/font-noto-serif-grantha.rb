cask "font-noto-serif-grantha" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifgrantha/NotoSerifGrantha-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Grantha"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Grantha"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Serif Grantha",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSerifGrantha-Regular.ttf"

  # No zap stanza required
end
