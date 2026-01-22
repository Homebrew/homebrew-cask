cask "font-noto-sans-runic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansRunic-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Runic"
  homepage "https://fonts.google.com/#sans-runr"

  font "NotoSansRunic-Regular.ttf"

  # No zap stanza required
end
