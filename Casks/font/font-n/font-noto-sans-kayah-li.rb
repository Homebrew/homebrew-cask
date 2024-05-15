cask "font-noto-sans-kayah-li" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansKayahLi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Kayah Li"
  homepage "https://www.google.com/get/noto/#sans-kali"

  font "NotoSansKayahLi-Regular.ttf"

  # No zap stanza required
end
