cask "font-noto-sans-old-turkic" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansOldTurkic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Old Turkic"
  homepage "https://www.google.com/get/noto/#sans-orkh"

  font "NotoSansOldTurkic-Regular.ttf"

  # No zap stanza required
end
