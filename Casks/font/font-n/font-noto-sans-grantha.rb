cask "font-noto-sans-grantha" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgrantha/NotoSansGrantha-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Grantha"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Grantha"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Grantha",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansGrantha-Regular.ttf"

  # No zap stanza required
end
