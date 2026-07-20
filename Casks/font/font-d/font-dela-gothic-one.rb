cask "font-dela-gothic-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/delagothicone/DelaGothicOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Dela Gothic One"
  homepage "https://fonts.google.com/specimen/Dela+Gothic+One"

  font "DelaGothicOne-Regular.ttf"

  # No zap stanza required
end
