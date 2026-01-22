cask "font-noto-sans-vai" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansVai-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Vai"
  homepage "https://fonts.google.com/#sans-vaii"

  font "NotoSansVai-Regular.ttf"

  # No zap stanza required
end
