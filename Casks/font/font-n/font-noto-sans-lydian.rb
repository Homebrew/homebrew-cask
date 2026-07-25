cask "font-noto-sans-lydian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanslydian/NotoSansLydian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Lydian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Lydian"

  font "NotoSansLydian-Regular.ttf"

  # No zap stanza required
end
