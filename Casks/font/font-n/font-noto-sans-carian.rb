cask "font-noto-sans-carian" do
  version "2.002"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscarian/NotoSansCarian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Carian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Carian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Carian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCarian-Regular.ttf"

  # No zap stanza required
end
