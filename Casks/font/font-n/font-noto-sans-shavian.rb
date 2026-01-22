cask "font-noto-sans-shavian" do
  version :latest
  sha256 :no_check

  url "https://noto-website-2.storage.googleapis.com/pkgs/NotoSansShavian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Shavian"
  homepage "https://fonts.google.com/#sans-shaw"

  font "NotoSansShavian-Regular.ttf"

  # No zap stanza required
end
