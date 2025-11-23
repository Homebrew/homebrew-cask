cask "font-noto-sans-soyombo" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanssoyombo/NotoSansSoyombo-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Soyombo"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Soyombo"

  font "NotoSansSoyombo-Regular.ttf"

  # No zap stanza required
end
