cask "font-noto-sans-lisu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansLisu-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Lisu"
  homepage "https://fonts.google.com/#sans-lisu"

  font "NotoSansLisu-Regular.ttf"

  # No zap stanza required
end
