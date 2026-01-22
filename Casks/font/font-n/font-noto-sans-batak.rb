cask "font-noto-sans-batak" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansBatak-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Batak"
  homepage "https://font.google.com"

  font "NotoSansBatak-Regular.ttf"

  # No zap stanza required
end
