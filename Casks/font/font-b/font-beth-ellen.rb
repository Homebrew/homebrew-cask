cask "font-beth-ellen" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bethellen/BethEllen-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Beth Ellen"
  homepage "https://fonts.google.com/specimen/Beth+Ellen"

  font "BethEllen-Regular.ttf"

  # No zap stanza required
end
