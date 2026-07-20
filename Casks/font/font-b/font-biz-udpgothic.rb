cask "font-biz-udpgothic" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts.git",
      verified:  "github.com/google/fonts",
      branch:    "main",
      only_path: "ofl/bizudpgothic"
  name "BIZ UDPGothic"
  homepage "https://fonts.google.com/specimen/BIZ+UDPGothic"

  font "BIZUDPGothic-Bold.ttf"
  font "BIZUDPGothic-Regular.ttf"

  # No zap stanza required
end
