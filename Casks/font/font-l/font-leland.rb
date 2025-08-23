cask "font-leland" do
  version "0.79"
  sha256 "fbfde20539a32c679057e99cdbf979ff35e050b893b0cb96058fcb1b48234b89"

  url "https://github.com/MuseScoreFonts/Leland/archive/refs/tags/v#{version}.tar.gz"
  name "Leland"
  homepage "https://github.com/MuseScoreFonts/Leland"

  font "Leland-#{version}/Leland.otf"
  font "Leland-#{version}/LelandText.otf"
  artifact "Leland-#{version}/leland_metadata.json", target: "/Library/Application Support/SMuFL/Fonts/Leland/Leland.json"

  # No zap stanza required
end
