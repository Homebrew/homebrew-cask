cask "font-noto-sans-saurashtra" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansSaurashtra-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Saurashtra"
  homepage "https://fonts.google.com/#sans-saur"

  font "NotoSansSaurashtra-Regular.ttf"

  # No zap stanza required
end
