cask "font-noto-sans-signwriting" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssignwriting/NotoSansSignWriting-Regular.ttf"
  name "Noto Sans SignWriting"
  homepage "https://fonts.google.com/specimen/Noto+Sans+SignWriting"

  font "NotoSansSignWriting-Regular.ttf"

  # No zap stanza required
end
