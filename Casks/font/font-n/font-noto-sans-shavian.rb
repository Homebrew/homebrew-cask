cask "font-noto-sans-shavian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansshavian/NotoSansShavian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Shavian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Shavian"

  font "NotoSansShavian-Regular.ttf"

  # No zap stanza required
end
