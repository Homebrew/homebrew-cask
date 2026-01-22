cask "font-noto-sans-coptic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansCoptic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Coptic"
  homepage "https://fonts.google.com/#sans-copt"

  font "NotoSansCoptic-Regular.ttf"

  # No zap stanza required
end
