cask "font-sancreek" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/sancreek/Sancreek-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Sancreek"
  homepage "https://fonts.google.com/specimen/Sancreek"

  font "Sancreek-Regular.ttf"

  # No zap stanza required
end
