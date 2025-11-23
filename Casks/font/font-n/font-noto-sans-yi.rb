cask "font-noto-sans-yi" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansYi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Yi"
  homepage "https://www.google.com/get/noto/#sans-yiii"

  font "NotoSansYi-Regular.ttf"

  # No zap stanza required
end
