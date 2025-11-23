cask "font-noto-sans-buginese" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansBuginese-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Buginese"
  homepage "https://www.google.com/get/noto/#sans-bugi"

  font "NotoSansBuginese-Regular.ttf"

  # No zap stanza required
end
