cask "font-noto-sans-pahawh-hmong" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspahawhhmong/NotoSansPahawhHmong-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Pahawh Hmong"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Pahawh+Hmong"

  font "NotoSansPahawhHmong-Regular.ttf"

  # No zap stanza required
end
