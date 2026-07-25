cask "font-noto-sans-psalter-pahlavi" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notosanspsalterpahlavi/NotoSansPsalterPahlavi-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Sans Psalter Pahlavi"
  homepage "https://fonts.google.com/specimen/Noto+Sans+Psalter+Pahlavi"

  font "NotoSansPsalterPahlavi-Regular.ttf"

  # No zap stanza required
end
