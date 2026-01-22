cask "font-noto-sans-bamum" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansBamum-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Bamum"
  homepage "https://font.google.com"

  font "NotoSansBamum-Regular.ttf"

  # No zap stanza required
end
