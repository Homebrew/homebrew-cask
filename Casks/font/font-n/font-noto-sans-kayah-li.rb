cask "font-noto-sans-kayah-li" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansKayahLi-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Kayah Li"
  homepage "https://fonts.google.com/#sans-kali"

  font "NotoSansKayahLi-Regular.ttf"

  # No zap stanza required
end
