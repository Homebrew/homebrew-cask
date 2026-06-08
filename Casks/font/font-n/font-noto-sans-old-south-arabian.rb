cask "font-noto-sans-old-south-arabian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansoldsoutharabian/NotoSansOldSouthArabian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Old South Arabian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Old+South+Arabian"

  font "NotoSansOldSouthArabian-Regular.ttf"

  # No zap stanza required
end
