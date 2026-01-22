cask "font-noto-sans-phags-pa" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansPhagsPa-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Phags Pa"
  homepage "https://fonts.google.com/#sans-phag"

  font "NotoSansPhagsPa-Regular.ttf"

  # No zap stanza required
end
