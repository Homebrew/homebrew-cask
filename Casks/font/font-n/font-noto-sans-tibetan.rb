cask "font-noto-sans-tibetan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansTibetan-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Tibetan"
  homepage "https://fonts.google.com/#sans-tibt"

  font "NotoSansTibetan-Bold.ttf"
  font "NotoSansTibetan-Regular.ttf"

  # No zap stanza required
end
