cask "font-noto-sans-telugu" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansTelugu-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Telugu"
  homepage "https://fonts.google.com/#sans-telu"

  font "NotoSansTelugu-Regular.ttf"
  font "NotoSansTelugu-Bold.ttf"

  # No zap stanza required
end
