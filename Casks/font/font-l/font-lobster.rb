cask "font-lobster" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/lobster/Lobster-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Lobster"
  homepage "https://fonts.google.com/specimen/Lobster"

  font "Lobster-Regular.ttf"

  # No zap stanza required
end
