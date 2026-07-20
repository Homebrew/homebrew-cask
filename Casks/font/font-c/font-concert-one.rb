cask "font-concert-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/concertone/ConcertOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Concert One"
  homepage "https://fonts.google.com/specimen/Concert+One"

  font "ConcertOne-Regular.ttf"

  # No zap stanza required
end
