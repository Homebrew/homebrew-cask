cask "font-noto-sans-tifinagh" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansTifinagh-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tifinagh"
  homepage "https://fonts.google.com/#sans-tfng"

  font "NotoSansTifinagh-Regular.ttf"

  # No zap stanza required
end
