cask "font-noto-sans-buhid" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansBuhid-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Buhid"
  homepage "https://font.google.com"

  font "NotoSansBuhid-Regular.ttf"

  # No zap stanza required
end
