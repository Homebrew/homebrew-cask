cask "font-noto-serif-telugu" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifTelugu-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Telugu"
  homepage "https://www.google.com/get/noto/#serif-telu"

  font "NotoSerifTelugu-Bold.ttf"
  font "NotoSerifTelugu-Regular.ttf"

  # No zap stanza required
end
