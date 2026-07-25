cask "font-protest-riot" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/protestriot/ProtestRiot-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Protest Riot"
  homepage "https://fonts.google.com/specimen/Protest+Riot"

  font "ProtestRiot-Regular.ttf"

  # No zap stanza required
end
