cask "font-poller-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pollerone/PollerOne.ttf",
      verified: "github.com/google/fonts/"
  name "Poller One"
  homepage "https://fonts.google.com/specimen/Poller+One"

  font "PollerOne.ttf"

  # No zap stanza required
end
