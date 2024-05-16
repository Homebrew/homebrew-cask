cask "font-noto-sans-saurashtra" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansSaurashtra-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Saurashtra"
  homepage "https://www.google.com/get/noto/#sans-saur"

  font "NotoSansSaurashtra-Regular.ttf"

  # No zap stanza required
end
