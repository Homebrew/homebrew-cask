cask "font-noto-sans-syriac-estrangela" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansSyriacEstrangela-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Syriac Estrangela"
  homepage "https://fonts.google.com/#sans-syrc-estrangela"

  font "NotoSansSyriacEstrangela-Regular.ttf"

  # No zap stanza required
end
