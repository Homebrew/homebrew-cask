cask "font-noto-sans-brahmi" do
  version "2.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbrahmi/NotoSansBrahmi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Brahmi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Brahmi"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Brahmi",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansBrahmi-Regular.ttf"

  # No zap stanza required
end
