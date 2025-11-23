cask "font-noto-znamenny-musical-notation" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoznamennymusicalnotation/NotoZnamennyMusicalNotation-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Znamenny Musical Notation"
  homepage "https://fonts.google.com/specimen/Noto+Znamenny+Musical+Notation"

  font "NotoZnamennyMusicalNotation-Regular.ttf"

  # No zap stanza required
end
