cask "font-port-lligat-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/portlligatsans/PortLligatSans-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Port Lligat Sans"
  homepage "https://fonts.google.com/specimen/Port+Lligat+Sans"

  font "PortLligatSans-Regular.ttf"

  # No zap stanza required
end
