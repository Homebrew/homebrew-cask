cask "font-noto-sans-old-persian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldpersian/NotoSansOldPersian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Persian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Persian"

  font "NotoSansOldPersian-Regular.ttf"

  # No zap stanza required
end
