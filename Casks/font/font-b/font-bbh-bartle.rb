cask "font-bbh-bartle" do
  version :latest
  sha256 :no_check

  url "https://github.com/google/fonts/raw/main/ofl/bbhbartle/BBHBartle-Regular.ttf",
      verified: "github.com/google/fonts/"
  name "BBH Bartle"
  homepage "https://fonts.google.com/specimen/BBH+Bartle"

  font "BBHBartle-Regular.ttf"

  # No zap stanza required
end
