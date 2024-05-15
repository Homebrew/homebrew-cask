cask "font-noto-sans-kannada" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansKannada-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Kannada"
  homepage "https://www.google.com/get/noto/#sans-knda"

  font "NotoSansKannada-Bold.ttf"
  font "NotoSansKannada-Regular.ttf"

  # No zap stanza required
end
