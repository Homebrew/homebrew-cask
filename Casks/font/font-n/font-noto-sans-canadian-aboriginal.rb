cask "font-noto-sans-canadian-aboriginal" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansCanadianAboriginal-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Canadian Aboriginal"
  homepage "https://www.google.com/get/noto/#sans-cans"

  font "NotoSansCanadianAboriginal-Regular.ttf"

  # No zap stanza required
end
