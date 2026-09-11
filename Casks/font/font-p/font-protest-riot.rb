cask "font-protest-riot" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/protestriot/ProtestRiot-Regular.ttf"
  name "Protest Riot"
  homepage "https://fonts.google.com/specimen/Protest+Riot"

  font "ProtestRiot-Regular.ttf"

  # No zap stanza required
end
