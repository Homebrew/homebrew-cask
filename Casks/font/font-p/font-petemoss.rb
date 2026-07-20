cask "font-petemoss" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/petemoss/Petemoss-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "Petemoss"
  homepage "https://fonts.google.com/specimen/Petemoss"

  font "Petemoss-Regular.ttf"

  # No zap stanza required
end
