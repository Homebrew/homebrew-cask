cask "font-noto-sans-nko" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnko/NotoSansNKo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans NKo"
  homepage "https://fonts.google.com/specimen/Noto+Sans+NKo"

  font "NotoSansNKo-Regular.ttf"

  # No zap stanza required
end
