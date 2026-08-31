cask "font-noto-sans-chakma" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanschakma/NotoSansChakma-Regular.ttf"
  name "Noto Sans Chakma"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Chakma"

  font "NotoSansChakma-Regular.ttf"

  # No zap stanza required
end
