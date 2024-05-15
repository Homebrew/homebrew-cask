cask "font-noto-sans-khojki" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanskhojki/NotoSansKhojki-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Khojki"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Khojki"

  font "NotoSansKhojki-Regular.ttf"

  # No zap stanza required
end
