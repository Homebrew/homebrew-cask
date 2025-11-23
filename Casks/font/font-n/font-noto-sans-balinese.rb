cask "font-noto-sans-balinese" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansBalinese-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Balinese"
  homepage "https://www.google.com/get/noto/#sans-bali"

  font "NotoSansBalinese-Regular.ttf"

  # No zap stanza required
end
