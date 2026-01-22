cask "font-noto-sans-old-italic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansOldItalic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Old Italic"
  homepage "https://fonts.google.com/#sans-ital"

  font "NotoSansOldItalic-Regular.ttf"

  # No zap stanza required
end
