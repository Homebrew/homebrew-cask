cask "font-noto-sans-old-italic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOldItalic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Old Italic"
  homepage "https://www.google.com/get/noto/#sans-ital"

  font "NotoSansOldItalic-Regular.ttf"

  # No zap stanza required
end
