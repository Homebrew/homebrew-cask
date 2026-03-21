cask "font-noto-sans-old-persian" do
  version "2.001"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldpersian/NotoSansOldPersian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Persian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Persian"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Sans Old Persian",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoSansOldPersian-Regular.ttf"

  # No zap stanza required
end
