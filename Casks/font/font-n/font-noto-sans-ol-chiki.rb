cask "font-noto-sans-ol-chiki" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOlChiki-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Ol Chiki"
  homepage "https://www.google.com/get/noto/#sans-olck"

  font "NotoSansOlChiki-Regular.ttf"

  # No zap stanza required
end
