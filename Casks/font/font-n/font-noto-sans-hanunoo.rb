cask "font-noto-sans-hanunoo" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansHanunoo-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Hanunoo"
  homepage "https://www.google.com/get/noto/#sans-hano"

  font "NotoSansHanunoo-Regular.ttf"

  # No zap stanza required
end
