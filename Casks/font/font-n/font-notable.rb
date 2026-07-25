cask "font-notable" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/notable/Notable-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Notable"
  homepage "https://fonts.google.com/specimen/Notable"

  font "Notable-Regular.ttf"

  # No zap stanza required
end
