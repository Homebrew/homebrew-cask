cask "font-pathway-gothic-one" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/pathwaygothicone/PathwayGothicOne-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Pathway Gothic One"
  homepage "https://fonts.google.com/specimen/Pathway+Gothic+One"

  font "PathwayGothicOne-Regular.ttf"

  # No zap stanza required
end
