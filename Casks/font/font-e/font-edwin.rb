cask "font-edwin" do
  version "0.54"
  sha256 "761a15932defe72b40eecb22e8255cba225bc9efedb208c83e2f5b0b77b7103e"

  url "https://github.com/MuseScoreFonts/Edwin/archive/refs/tags/v#{version}.zip"
  name "Text font for musical scores"
  homepage "https://github.com/MuseScoreFonts/Edwin"

  font "Edwin-#{version}/Edwin-BdIta.otf"
  font "Edwin-#{version}/Edwin-Bold.otf"
  font "Edwin-#{version}/Edwin-Italic.otf"
  font "Edwin-#{version}/Edwin-Roman.otf"

  # No zap stanza required
end
