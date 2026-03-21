cask "font-noto-sans-takri" do
  version "2.005"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstakri/NotoSansTakri-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Takri"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Takri"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Takri",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTakri-Regular.ttf"

  # No zap stanza required
end
