cask "font-noto-sans-old-turkic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldturkic/NotoSansOldTurkic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old Turkic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+Turkic"

  font "NotoSansOldTurkic-Regular.ttf"

  # No zap stanza required
end
