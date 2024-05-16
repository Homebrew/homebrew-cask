cask "font-noto-sans-buhid" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansBuhid-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Buhid"
  homepage "https://www.google.com/get/noto/#sans-buhd"

  font "NotoSansBuhid-Regular.ttf"

  # No zap stanza required
end
