cask "font-noto-sans-osmanya" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansosmanya/NotoSansOsmanya-Regular.ttf"
  name "Noto Sans Osmanya"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Osmanya"

  font "NotoSansOsmanya-Regular.ttf"

  # No zap stanza required
end
