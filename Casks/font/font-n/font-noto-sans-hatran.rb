cask "font-noto-sans-hatran" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshatran/NotoSansHatran-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Hatran"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Hatran"

  font "NotoSansHatran-Regular.ttf"

  # No zap stanza required
end
