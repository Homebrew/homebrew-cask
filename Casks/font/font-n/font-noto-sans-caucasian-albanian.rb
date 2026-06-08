cask "font-noto-sans-caucasian-albanian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanscaucasianalbanian/NotoSansCaucasianAlbanian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Caucasian Albanian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Caucasian+Albanian"

  font "NotoSansCaucasianAlbanian-Regular.ttf"

  # No zap stanza required
end
