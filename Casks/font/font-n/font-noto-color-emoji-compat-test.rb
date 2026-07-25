cask "font-noto-color-emoji-compat-test" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notocoloremojicompattest/NotoColorEmojiCompatTest-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Color Emoji Compat Test"
  homepage "https://fonts.google.com/specimen/Noto+Color+Emoji+Compat+Test"

  font "NotoColorEmojiCompatTest-Regular.ttf"

  # No zap stanza required
end
