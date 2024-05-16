cask "font-noto-sans-osmanya" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOsmanya-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Osmanya"
  homepage "https://www.google.com/get/noto/#sans-osma"

  font "NotoSansOsmanya-Regular.ttf"

  # No zap stanza required
end
