cask "font-noto-sans-gurmukhi" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansGurmukhi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Gurmukhi"
  homepage "https://www.google.com/get/noto/#sans-guru"

  font "NotoSansGurmukhi-Bold.ttf"
  font "NotoSansGurmukhi-Regular.ttf"

  # No zap stanza required
end
