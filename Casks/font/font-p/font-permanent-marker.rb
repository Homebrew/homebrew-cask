cask "font-permanent-marker" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/apache/permanentmarker/PermanentMarker-Regular.ttf"
  name "Permanent Marker"
  homepage "https://fonts.google.com/specimen/Permanent+Marker"

  font "PermanentMarker-Regular.ttf"

  # No zap stanza required
end
