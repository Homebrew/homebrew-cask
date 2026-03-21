cask "font-noto-sans-old-italic" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansolditalic/NotoSansOldItalic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Italic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Italic"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Old Italic",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOldItalic-Regular.ttf"

  # No zap stanza required
end
