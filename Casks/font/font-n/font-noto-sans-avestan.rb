cask "font-noto-sans-avestan" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosansavestan/NotoSansAvestan-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Avestan"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Avestan"

  font "NotoSansAvestan-Regular.ttf"

  # No zap stanza required
end
