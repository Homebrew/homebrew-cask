cask "font-noto-sans-carian" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCarian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Carian"
  homepage "https://www.google.com/get/noto/#sans-cari"

  font "NotoSansCarian-Regular.ttf"

  # No zap stanza required
end
