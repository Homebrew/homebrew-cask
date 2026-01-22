cask "font-noto-sans-lydian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansLydian-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Lydian"
  homepage "https://fonts.google.com/#sans-lydi"

  font "NotoSansLydian-Regular.ttf"

  # No zap stanza required
end
