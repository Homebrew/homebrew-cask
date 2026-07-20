cask "font-noto-sans-deseret" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansdeseret/NotoSansDeseret-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Deseret"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Deseret"

  font "NotoSansDeseret-Regular.ttf"

  # No zap stanza required
end
