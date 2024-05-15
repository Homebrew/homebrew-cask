cask "font-noto-sans-tai-le" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTaiLe-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tai Le"
  homepage "https://www.google.com/get/noto/#sans-tale"

  font "NotoSansTaiLe-Regular.ttf"

  # No zap stanza required
end
