cask "font-noto-sans-chorasmian" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanschorasmian/NotoSansChorasmian-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Chorasmian"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Chorasmian"

  font "NotoSansChorasmian-Regular.ttf"

  # No zap stanza required
end
