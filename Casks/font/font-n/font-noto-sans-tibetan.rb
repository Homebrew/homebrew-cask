cask "font-noto-sans-tibetan" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTibetan-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tibetan"
  homepage "https://www.google.com/get/noto/#sans-tibt"

  font "NotoSansTibetan-Bold.ttf"
  font "NotoSansTibetan-Regular.ttf"

  # No zap stanza required
end
