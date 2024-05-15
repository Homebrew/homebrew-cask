cask "font-noto-sans-lycian" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansLycian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Lycian"
  homepage "https://www.google.com/get/noto/#sans-lyci"

  font "NotoSansLycian-Regular.ttf"

  # No zap stanza required
end
