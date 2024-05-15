cask "font-noto-sans-wancho" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanswancho/NotoSansWancho-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Wancho"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Wancho"

  font "NotoSansWancho-Regular.ttf"

  # No zap stanza required
end
