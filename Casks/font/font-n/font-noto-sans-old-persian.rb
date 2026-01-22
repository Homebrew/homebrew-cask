cask "font-noto-sans-old-persian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansOldPersian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Old Persian"
  homepage "https://fonts.google.com/#sans-xpeo"

  font "NotoSansOldPersian-Regular.ttf"

  # No zap stanza required
end
