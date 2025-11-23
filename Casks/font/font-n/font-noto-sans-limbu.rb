cask "font-noto-sans-limbu" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansLimbu-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Limbu"
  homepage "https://www.google.com/get/noto/#sans-limb"

  font "NotoSansLimbu-Regular.ttf"

  # No zap stanza required
end
