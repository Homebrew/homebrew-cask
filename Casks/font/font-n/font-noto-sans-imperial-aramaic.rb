cask "font-noto-sans-imperial-aramaic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansImperialAramaic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Imperial Aramaic"
  homepage "https://fonts.google.com/#sans-armi"

  font "NotoSansImperialAramaic-Regular.ttf"

  # No zap stanza required
end
