cask "font-strait" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/strait/Strait-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Strait"
  homepage "https://fonts.google.com/specimen/Strait"

  font "Strait-Regular.ttf"

  # No zap stanza required
end
