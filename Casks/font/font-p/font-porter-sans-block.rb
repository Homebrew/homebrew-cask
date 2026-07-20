cask "font-porter-sans-block" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/portersansblock/PorterSansBlock-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Porter Sans Block"
  homepage "https://fonts.google.com/specimen/Porter+Sans+Block"

  font "PorterSansBlock-Regular.ttf"

  # No zap stanza required
end
