cask "font-noto-color-emoji" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notocoloremoji/NotoColorEmoji-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Color Emoji"
  homepage "https://fonts.google.com/specimen/Noto+Color+Emoji"

  font "NotoColorEmoji-Regular.ttf"

  # No zap stanza required
end
