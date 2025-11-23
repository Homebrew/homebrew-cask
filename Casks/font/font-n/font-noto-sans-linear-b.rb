cask "font-noto-sans-linear-b" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansLinearB-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Linear B"
  homepage "https://www.google.com/get/noto/#sans-linb"

  font "NotoSansLinearB-Regular.ttf"

  # No zap stanza required
end
