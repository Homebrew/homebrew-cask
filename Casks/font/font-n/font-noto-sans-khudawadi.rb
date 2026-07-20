cask "font-noto-sans-khudawadi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskhudawadi/NotoSansKhudawadi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Khudawadi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Khudawadi"

  font "NotoSansKhudawadi-Regular.ttf"

  # No zap stanza required
end
