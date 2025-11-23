cask "font-bellefair" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bellefair/Bellefair-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Bellefair"
  homepage "https://fonts.google.com/specimen/Bellefair"

  font "Bellefair-Regular.ttf"

  # No zap stanza required
end
