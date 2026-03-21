cask "font-noto-znamenny-musical-notation" do
  version "1.003"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notoznamennymusicalnotation/NotoZnamennyMusicalNotation-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Noto Znamenny Musical Notation"
  homepage "https://fonts.google.com/specimen/Noto+Znamenny+Musical+Notation"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Noto Znamenny Musical Notation",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "NotoZnamennyMusicalNotation-Regular.ttf"

  # No zap stanza required
end
