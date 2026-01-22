cask "font-noto-sans-syriac-eastern" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSyriacEastern-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Syriac Eastern"
  homepage "https://fonts.google.com/#sans-syrc-eastern"

  font "NotoSansSyriacEastern-Regular.ttf"

  # No zap stanza required
end
