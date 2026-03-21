cask "font-noto-sans-coptic" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscoptic/NotoSansCoptic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Coptic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Coptic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Coptic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansCoptic-Regular.ttf"

  # No zap stanza required
end
