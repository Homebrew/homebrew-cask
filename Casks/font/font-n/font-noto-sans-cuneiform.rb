cask "font-noto-sans-cuneiform" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscuneiform/NotoSansCuneiform-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Cuneiform"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Cuneiform"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Cuneiform",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCuneiform-Regular.ttf"

  # No zap stanza required
end
