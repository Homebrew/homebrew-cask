cask "font-noto-sans-ogham" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansogham/NotoSansOgham-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Ogham"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Ogham"

  font "NotoSansOgham-Regular.ttf"

  # No zap stanza required
end
