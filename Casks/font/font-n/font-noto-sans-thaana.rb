cask "font-noto-sans-thaana" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansThaana-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Thaana"
  homepage "https://fonts.google.com/#sans-thaa"

  font "NotoSansThaana-Bold.ttf"
  font "NotoSansThaana-Regular.ttf"

  # No zap stanza required
end
