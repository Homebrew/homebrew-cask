cask "font-edwin" do
  version "0.54"
  sha256 "17a073c27aec6842de81da3a05d8eed4e1be448f732a79f8b48012477abacd89"

  url "https://github.com/MuseScoreFonts/Edwin/archive/refs/tags/v#{version}.tar.gz"
  name "Text font for musical scores"
  homepage "https://github.com/MuseScoreFonts/Edwin"

  font "Edwin-#{version}/Edwin-BdIta.otf"
  font "Edwin-#{version}/Edwin-Bold.otf"
  font "Edwin-#{version}/Edwin-Italic.otf"
  font "Edwin-#{version}/Edwin-Roman.otf"

  # No zap stanza required
end
