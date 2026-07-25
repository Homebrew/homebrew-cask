cask "font-noto-sans-bhaiksuki" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansbhaiksuki/NotoSansBhaiksuki-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Bhaiksuki"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Bhaiksuki"

  font "NotoSansBhaiksuki-Regular.ttf"

  # No zap stanza required
end
