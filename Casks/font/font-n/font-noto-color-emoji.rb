cask "font-noto-color-emoji" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoColorEmoji-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Color Emoji"
  homepage "https://www.google.com/get/noto/#emoji-zsye-color"

  font "NotoColorEmoji.ttf"

  # No zap stanza required
end
