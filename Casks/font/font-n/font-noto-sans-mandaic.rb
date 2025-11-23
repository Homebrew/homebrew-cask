cask "font-noto-sans-mandaic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansMandaic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Mandaic"
  homepage "https://www.google.com/get/noto/#sans-mand"

  font "NotoSansMandaic-Regular.ttf"

  # No zap stanza required
end
