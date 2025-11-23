cask "font-noto-sans-chakma" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansChakma-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Chakma"
  homepage "https://www.google.com/get/noto/#sans-cakm"

  font "NotoSansChakma-Regular.ttf"

  # No zap stanza required
end
