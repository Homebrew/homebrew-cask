cask "font-noto-sans-tai-le" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansTaiLe-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tai Le"
  homepage "https://fonts.google.com/#sans-tale"

  font "NotoSansTaiLe-Regular.ttf"

  # No zap stanza required
end
