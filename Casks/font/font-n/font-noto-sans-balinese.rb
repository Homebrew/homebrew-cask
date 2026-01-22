cask "font-noto-sans-balinese" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansBalinese-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Balinese"
  homepage "https://font.google.com"

  font "NotoSansBalinese-Regular.ttf"

  # No zap stanza required
end
