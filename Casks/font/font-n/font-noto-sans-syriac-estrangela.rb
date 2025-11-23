cask "font-noto-sans-syriac-estrangela" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSyriacEstrangela-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Syriac Estrangela"
  homepage "https://www.google.com/get/noto/#sans-syrc-estrangela"

  font "NotoSansSyriacEstrangela-Regular.ttf"

  # No zap stanza required
end
