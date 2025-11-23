cask "font-noto-sans-mro" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansmro/NotoSansMro-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Mro"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Mro"

  font "NotoSansMro-Regular.ttf"

  # No zap stanza required
end
