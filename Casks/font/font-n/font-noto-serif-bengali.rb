cask "font-noto-serif-bengali" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSerifBengali-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Serif Bengali"
  homepage "https://www.google.com/get/noto/#serif-beng"

  font "NotoSerifBengali-Bold.ttf"
  font "NotoSerifBengali-Regular.ttf"

  # No zap stanza required
end
