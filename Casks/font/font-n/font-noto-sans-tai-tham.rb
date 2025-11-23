cask "font-noto-sans-tai-tham" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTaiTham-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tai Tham"
  homepage "https://www.google.com/get/noto/#sans-lana"

  font "NotoSansTaiTham-Regular.ttf"

  # No zap stanza required
end
