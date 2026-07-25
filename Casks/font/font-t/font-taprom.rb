cask "font-taprom" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/taprom/Taprom-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Taprom"
  homepage "https://fonts.google.com/specimen/Taprom"

  font "Taprom-Regular.ttf"

  # No zap stanza required
end
