cask "font-noto-sans-zanabazar-square" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanszanabazarsquare/NotoSansZanabazarSquare-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Zanabazar Square"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Zanabazar+Square"

  font "NotoSansZanabazarSquare-Regular.ttf"

  # No zap stanza required
end
