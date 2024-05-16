cask "font-praise" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/praise/Praise-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Praise"
  desc "Versatile script with variations from casual (non-connecting) to formal appeal"
  homepage "https://fonts.google.com/specimen/Praise"

  font "Praise-Regular.ttf"

  # No zap stanza required
end
