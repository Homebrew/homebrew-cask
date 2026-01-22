cask "font-noto-color-emoji" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoColorEmoji-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Color Emoji"
  homepage "https://fonts.google.com/#emoji-zsye-color"

  font "NotoColorEmoji.ttf"

  # No zap stanza required
end
