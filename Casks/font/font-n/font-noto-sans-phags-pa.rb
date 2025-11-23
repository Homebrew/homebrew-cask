cask "font-noto-sans-phags-pa" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansPhagsPa-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Phags Pa"
  homepage "https://www.google.com/get/noto/#sans-phag"

  font "NotoSansPhagsPa-Regular.ttf"

  # No zap stanza required
end
