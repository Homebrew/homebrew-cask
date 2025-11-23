cask "font-noto-sans-syriac-western" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSyriacWestern-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Syriac Western"
  homepage "https://www.google.com/get/noto/#sans-syrc-western"

  font "NotoSansSyriacWestern-Regular.ttf"

  # No zap stanza required
end
