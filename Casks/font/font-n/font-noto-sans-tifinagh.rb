cask "font-noto-sans-tifinagh" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTifinagh-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tifinagh"
  homepage "https://www.google.com/get/noto/#sans-tfng"

  font "NotoSansTifinagh-Regular.ttf"

  # No zap stanza required
end
