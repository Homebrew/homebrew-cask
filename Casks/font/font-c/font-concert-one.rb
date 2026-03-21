cask "font-concert-one" do
  version "1.004"
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/concertone/ConcertOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Concert One"
  homepage "https://fonts.google.com/specimen/Concert+One"

  livecheck do
    url "https://fonts.sandbox.google.com/metadata/versions"
    strategy :page_match
    regex(/name": "Concert One",[\s\S]*?version": "Version ([\d.]+)/)
  end

  font "ConcertOne-Regular.ttf"

  # No zap stanza required
end
