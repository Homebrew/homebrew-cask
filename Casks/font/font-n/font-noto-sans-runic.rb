cask "font-noto-sans-runic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansRunic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Runic"
  homepage "https://www.google.com/get/noto/#sans-runr"

  font "NotoSansRunic-Regular.ttf"

  # No zap stanza required
end
