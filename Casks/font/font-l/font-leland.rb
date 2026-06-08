cask "font-leland" do
  version "0.80"
  sha256 "d16d0c8949af268840f6e670b988444085f11049fc62609bc0e4322ef5e24134"

  url "https://github.com/MuseScoreFonts/Leland/archive/refs/tags/v#{version}.tar.gz"
  name "Leland"
  homepage "https://github.com/MuseScoreFonts/Leland"

  font "Leland-#{version}/Leland.otf"
  font "Leland-#{version}/LelandText.otf"
  artifact "Leland-#{version}/leland_metadata.json", target: "/Library/Application Support/SMuFL/Fonts/Leland/Leland.json"

  # No zap stanza required
end
