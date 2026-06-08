cask "font-noto-sans-grantha" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgrantha/NotoSansGrantha-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Grantha"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Grantha"

  font "NotoSansGrantha-Regular.ttf"

  # No zap stanza required
end
