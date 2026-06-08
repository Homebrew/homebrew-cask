cask "font-noto-music" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notomusic/NotoMusic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Music"
  homepage "https://fonts.google.com/specimen/Noto+Music"

  font "NotoMusic-Regular.ttf"

  # No zap stanza required
end
