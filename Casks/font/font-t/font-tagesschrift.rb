cask "font-tagesschrift" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/tagesschrift/Tagesschrift-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Tagesschrift"
  homepage "https://fonts.google.com/specimen/Tagesschrift"

  font "Tagesschrift-Regular.ttf"

  # No zap stanza required
end
