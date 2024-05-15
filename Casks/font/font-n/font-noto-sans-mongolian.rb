cask "font-noto-sans-mongolian" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansMongolian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Mongolian"
  homepage "https://www.google.com/get/noto/#sans-mong"

  font "NotoSansMongolian-Regular.ttf"

  # No zap stanza required
end
