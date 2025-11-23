cask "font-noto-sans-tai-viet" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTaiViet-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tai Viet"
  homepage "https://www.google.com/get/noto/#sans-tavt"

  font "NotoSansTaiViet-Regular.ttf"

  # No zap stanza required
end
