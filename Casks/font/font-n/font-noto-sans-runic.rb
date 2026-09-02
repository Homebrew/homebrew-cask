cask "font-noto-sans-runic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansrunic/NotoSansRunic-Regular.ttf"
  name "Noto Sans Runic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Runic"

  font "NotoSansRunic-Regular.ttf"

  # No zap stanza required
end
