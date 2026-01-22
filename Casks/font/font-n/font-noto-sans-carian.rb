cask "font-noto-sans-carian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansCarian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Carian"
  homepage "https://font.google.com"

  font "NotoSansCarian-Regular.ttf"

  # No zap stanza required
end
