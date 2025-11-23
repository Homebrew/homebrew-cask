cask "font-noto-sans-deseret" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansDeseret-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Deseret"
  homepage "https://www.google.com/get/noto/#sans-dsrt"

  font "NotoSansDeseret-Regular.ttf"

  # No zap stanza required
end
