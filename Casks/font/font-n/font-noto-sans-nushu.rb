cask "font-noto-sans-nushu" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnushu/NotoSansNushu-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Nushu"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Nushu"

  font "NotoSansNushu-Regular.ttf"

  # No zap stanza required
end
