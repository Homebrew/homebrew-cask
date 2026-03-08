cask "font-noto-sans-mandaic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmandaic/NotoSansMandaic-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mandaic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mandaic"

  font "NotoSansMandaic-Regular.ttf"

  # No zap stanza required
end
