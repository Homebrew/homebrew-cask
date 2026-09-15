cask "font-noto-sans-nabataean" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansnabataean/NotoSansNabataean-Regular.ttf"
  name "Noto Sans Nabataean"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Nabataean"

  font "NotoSansNabataean-Regular.ttf"

  # No zap stanza required
end
