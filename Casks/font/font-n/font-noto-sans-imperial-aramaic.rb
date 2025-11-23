cask "font-noto-sans-imperial-aramaic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansImperialAramaic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Imperial Aramaic"
  homepage "https://www.google.com/get/noto/#sans-armi"

  font "NotoSansImperialAramaic-Regular.ttf"

  # No zap stanza required
end
