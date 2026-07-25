cask "font-noto-sans-siddham" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssiddham/NotoSansSiddham-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Siddham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Siddham"

  font "NotoSansSiddham-Regular.ttf"

  # No zap stanza required
end
