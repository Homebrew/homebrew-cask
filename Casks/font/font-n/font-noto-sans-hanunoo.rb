cask "font-noto-sans-hanunoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansHanunoo-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Hanunoo"
  homepage "https://fonts.google.com/#sans-hano"

  font "NotoSansHanunoo-Regular.ttf"

  # No zap stanza required
end
