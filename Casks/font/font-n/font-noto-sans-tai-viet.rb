cask "font-noto-sans-tai-viet" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansTaiViet-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tai Viet"
  homepage "https://fonts.google.com/#sans-tavt"

  font "NotoSansTaiViet-Regular.ttf"

  # No zap stanza required
end
