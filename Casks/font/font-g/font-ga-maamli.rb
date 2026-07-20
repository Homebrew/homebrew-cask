cask "font-ga-maamli" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/gamaamli/GaMaamli-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Ga Maamli"
  homepage "https://fonts.google.com/specimen/Ga+Maamli"

  font "GaMaamli-Regular.ttf"

  # No zap stanza required
end
