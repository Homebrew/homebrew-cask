cask "font-boldonse" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/boldonse/Boldonse-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Boldonse"
  homepage "https://fonts.google.com/specimen/Boldonse"

  font "Boldonse-Regular.ttf"

  # No zap stanza required
end
