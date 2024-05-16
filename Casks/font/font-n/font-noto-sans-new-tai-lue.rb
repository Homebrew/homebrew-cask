cask "font-noto-sans-new-tai-lue" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansNewTaiLue-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans New Tai Lue"
  homepage "https://www.google.com/get/noto/#sans-talu"

  font "NotoSansNewTaiLue-Regular.ttf"

  # No zap stanza required
end
