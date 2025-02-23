cask "font-boldonse" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/boldonse/Boldonse-Regular.ttf"
  name "Boldonse"
  homepage "https://github.com/googlefonts/boldonse"

  font "Boldonse-Regular.ttf"

  # No zap stanza required
end
