cask "font-noto-sans-buhid" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbuhid/NotoSansBuhid-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Buhid"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Buhid"

  font "NotoSansBuhid-Regular.ttf"

  # No zap stanza required
end
