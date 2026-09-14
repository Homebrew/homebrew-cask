cask "font-noto-sans-sharada" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssharada/NotoSansSharada-Regular.ttf"
  name "Noto Sans Sharada"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Sharada"

  font "NotoSansSharada-Regular.ttf"

  # No zap stanza required
end
