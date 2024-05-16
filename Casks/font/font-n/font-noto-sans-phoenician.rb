cask "font-noto-sans-phoenician" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansPhoenician-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Phoenician"
  homepage "https://www.google.com/get/noto/#sans-phnx"

  font "NotoSansPhoenician-Regular.ttf"

  # No zap stanza required
end
