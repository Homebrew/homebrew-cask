cask "font-noto-sans-bamum" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansBamum-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Bamum"
  homepage "https://www.google.com/get/noto/#sans-bamu"

  font "NotoSansBamum-Regular.ttf"

  # No zap stanza required
end
