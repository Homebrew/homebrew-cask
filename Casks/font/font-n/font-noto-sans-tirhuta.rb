cask "font-noto-sans-tirhuta" do
  version "2.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanstirhuta/NotoSansTirhuta-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Tirhuta"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Tirhuta"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Tirhuta",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansTirhuta-Regular.ttf"

  # No zap stanza required
end
