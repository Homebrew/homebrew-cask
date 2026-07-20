cask "font-waterfall" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/waterfall/Waterfall-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Waterfall"
  homepage "https://fonts.google.com/specimen/Waterfall"

  font "Waterfall-Regular.ttf"

  # No zap stanza required
end
