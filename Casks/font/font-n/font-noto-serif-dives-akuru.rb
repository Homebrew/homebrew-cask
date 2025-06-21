cask "font-noto-serif-dives-akuru" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoserifdivesakuru/NotoSerifDivesAkuru-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Serif Dives Akuru"
  homepage "https://fonts.google.com/specimen/Noto+Serif+Dives+Akuru"

  font "NotoSerifDivesAkuru-Regular.ttf"

  # No zap stanza required
end
