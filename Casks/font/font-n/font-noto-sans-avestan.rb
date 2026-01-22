cask "font-noto-sans-avestan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/pkgs/NotoSansAvestan-unhinted.zip",
      verified: "noto-website-2.storage.googleapis.com/"
  name "Noto Sans Avestan"
  homepage "https://font.google.com"

  font "NotoSansAvestan-Regular.ttf"

  # No zap stanza required
end
