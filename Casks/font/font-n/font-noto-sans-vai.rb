cask "font-noto-sans-vai" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansVai-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Vai"
  homepage "https://www.google.com/get/noto/#sans-vaii"

  font "NotoSansVai-Regular.ttf"

  # No zap stanza required
end
