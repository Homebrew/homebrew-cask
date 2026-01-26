cask "font-noto-sans-mongolian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmongolian/NotoSansMongolian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mongolian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mongolian"

  font "NotoSansMongolian-Regular.ttf"

  # No zap stanza required
end
