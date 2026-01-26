cask "font-noto-sans-osage" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansosage/NotoSansOsage-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Osage"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Osage"

  font "NotoSansOsage-Regular.ttf"

  # No zap stanza required
end
