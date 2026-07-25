cask "font-noto-sans-kaithi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskaithi/NotoSansKaithi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Kaithi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Kaithi"

  font "NotoSansKaithi-Regular.ttf"

  # No zap stanza required
end
