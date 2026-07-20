cask "font-noto-sans-old-north-arabian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldnortharabian/NotoSansOldNorthArabian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old North Arabian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+North+Arabian"

  font "NotoSansOldNorthArabian-Regular.ttf"

  # No zap stanza required
end
