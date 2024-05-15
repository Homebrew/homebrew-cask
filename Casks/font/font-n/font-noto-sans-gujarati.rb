cask "font-noto-sans-gujarati" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansGujarati-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Gujarati"
  homepage "https://www.google.com/get/noto/#sans-gujr"

  font "NotoSansGujarati-Bold.ttf"
  font "NotoSansGujarati-Regular.ttf"

  # No zap stanza required
end
