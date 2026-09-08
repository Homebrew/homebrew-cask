cask "font-noto-sans-elymaic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanselymaic/NotoSansElymaic-Regular.ttf"
  name "Noto Sans Elymaic"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Elymaic"

  font "NotoSansElymaic-Regular.ttf"

  # No zap stanza required
end
