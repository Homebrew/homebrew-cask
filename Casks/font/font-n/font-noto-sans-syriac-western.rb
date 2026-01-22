cask "font-noto-sans-syriac-western" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansSyriacWestern-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Syriac Western"
  homepage "https://fonts.google.com/#sans-syrc-western"

  font "NotoSansSyriacWestern-Regular.ttf"

  # No zap stanza required
end
