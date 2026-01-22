cask "font-noto-sans-chakma" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansChakma-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Chakma"
  homepage "https://font.google.com"

  font "NotoSansChakma-Regular.ttf"

  # No zap stanza required
end
