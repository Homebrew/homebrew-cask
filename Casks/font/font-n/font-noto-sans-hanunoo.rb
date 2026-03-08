cask "font-noto-sans-hanunoo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanshanunoo/NotoSansHanunoo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Hanunoo"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Hanunoo"

  font "NotoSansHanunoo-Regular.ttf"

  # No zap stanza required
end
