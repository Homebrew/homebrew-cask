cask "font-noto-sans-gothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansgothic/NotoSansGothic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Gothic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Gothic"

  font "NotoSansGothic-Regular.ttf"

  # No zap stanza required
end
