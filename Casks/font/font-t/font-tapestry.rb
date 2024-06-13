cask "font-tapestry" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tapestry/Tapestry-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tapestry"
  homepage "https://fonts.google.com/specimen/Tapestry"

  font "Tapestry-Regular.ttf"

  # No zap stanza required
end
