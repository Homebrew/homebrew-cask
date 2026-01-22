cask "font-noto-sans-rejang" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansrejang/NotoSansRejang-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Rejang"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Rejang"

  font "NotoSansRejang-Regular.ttf"

  # No zap stanza required
end
