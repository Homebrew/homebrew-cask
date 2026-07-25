cask "font-nats" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/nats/NATS-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "NATS"
  homepage "https://fonts.google.com/specimen/NATS"

  font "NATS-Regular.ttf"

  # No zap stanza required
end
